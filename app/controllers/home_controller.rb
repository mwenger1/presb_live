class HomeController < ApplicationController
  def index
  	render layout: false
  end

  def dashboard
  end

  def intro
    @user = User.first
  end
end

