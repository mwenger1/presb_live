class HangoutsController < ApplicationController
  before_action :set_hangout, only: [:show, :edit, :update, :destroy]

  # GET /hangouts
  # GET /hangouts.json
  def index
    @hangouts = Hangout.all.order("datetime ASC")
    session[:user_id] = 1 unless session[:user_id].present?


  # this hijacks the normal flow and filters by tags
    if params[:search].eql?("true")
      if params[:hangout].nil?
        @hangouts = User.find(session[:user_id]).hangouts
      else
        if params[:hangout][:all] == 'true'
          this_is_an_all_search 
        end
        extract_hangouts_by_tags
      end
    else
      @hangouts = User.find(session[:user_id]).hangouts
    end

    @user_hangouts = Array.new

    @upcoming_hangouts = Array.new
    @happening_hangouts = Array.new

    @user_hangouts = User.find(session[:user_id]).hangouts

    #if it is a search i filter on ly the array
    if params[:search].eql?("true")
      if params[:hangout].nil?
        @hangouts = @hangouts-@user_hangouts
      else
      @hangouts = @hangout_filtered_by_tag
      end      
    else
      @hangouts = @hangouts-@user_hangouts
    end

    @hangouts.each do |hangout|
        if hangout.is_live?
          @happening_hangouts << hangout
        else
          @upcoming_hangouts << hangout
        end
    end


    if params[:search].eql?("true")
      if params[:hangout].nil?
        @tags = User.find(session[:user_id]).tags
      else
       @tags = @filtered_tags
      end
    else
      @tags = User.find(session[:user_id]).tags
    end

    @hangout_count = @hangouts.count - @user_hangouts.count

    if @hangout_count << 0
      @hangout_count = 0
    end 
  end

  # GET /hangouts/1
  # GET /hangouts/1.json
  def show
  end

  # GET /hangouts/new
  def new
    @hangout = Hangout.new
  end

  # GET /hangouts/1/edit
  def edit
  end

  # POST /hangouts
  # POST /hangouts.json
  def create
    @hangout = Hangout.new(hangout_params)

    add_tags_to_hangout

    @hangout.user_id = session[:user_id]
    respond_to do |format|
      if @hangout.save
        format.html { redirect_to hangouts_path, notice: 'Hangout was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /hangouts/1
  # PATCH/PUT /hangouts/1.json
  def update
    add_tags_to_hangout
    respond_to do |format|
      if @hangout.update(hangout_params)
        format.html { redirect_to @hangout, notice: 'Hangout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hangouts/1
  # DELETE /hangouts/1.json
  def destroy
    @hangout.destroy
    respond_to do |format|
      format.html { redirect_to hangouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.



    def set_hangout
      @hangout = Hangout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hangout_params
      params.require(:hangout).permit(:datetime, :title, :max_participants, :recordable, :hangout_url, :description, :user_id, :all)
    end

    def add_tags_to_hangout
      @hangout.hangout_tags.delete_all
      unless params[:hangout][:tags].nil?
        params[:hangout][:tags].each do |tag_id|
          @hangout.tags << Tag.find(tag_id.to_i)
        end
      end
    end

    def extract_hangouts_by_tags

      unless params[:hangout][:tags].nil?
        @hangout_filtered_by_tag = []
        @filtered_tags = []
        params[:hangout][:tags].each do |tag_id|
          tag = Tag.find(tag_id.to_i)
          @filtered_tags << tag
          tag.hangouts.each do |hangout|
            @hangout_filtered_by_tag << hangout

          end
        end
      end
      @hangout_filtered_by_tag.compact!
      @hangout_filtered_by_tag.uniq!
    end

    def this_is_an_all_search
      array = Tag.all.collect {|t| "#{t.id}"}
      params[:hangout] << {:tags => array}
   end
end
