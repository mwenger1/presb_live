class HangoutsController < ApplicationController
  before_action :set_hangout, only: [:show, :edit, :update, :destroy]

  # GET /hangouts
  # GET /hangouts.json
  def index
    @hangouts = Hangout.all
    session[:user_id] = "" unless session[:user_id].present?

    @user_hangouts = Array.new
    @community_hangouts = Array.new
    @hangouts.each do |hangout|
      if hangout.is_user_hangout? session[:user_id]
        @user_hangouts << hangout
      else
        @community_hangouts << hangout
      end
    end

    @tags = Tag.all
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
    @hangout.save
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
      params.require(:hangout).permit(:datetime, :title, :max_participants, :recordable, :hangout_url, :description, :user_id)
    end

    def add_tags_to_hangout
      @hangout.hangout_tags.delete_all
      unless params[:hangout][:tags].nil?
        params[:hangout][:tags].each do |tag_id|
          @hangout.tags << Tag.find(tag_id.to_i)
        end
      end
    end
end
