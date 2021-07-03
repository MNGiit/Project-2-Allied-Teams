class StaticController < ApplicationController
  def index
    @filling_position = User.find_by(id: session[:user_id]).filling_position if User.find_by(id: session[:user_id])
  end
end
