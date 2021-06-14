class UsersController < ApplicationController

  def new # signup
    if !session[:user_id]
      @user = User.new
    else
      redirect_to "/" # root_path
    end
  end

  def create

  end

  private

  def user_params

  end

end
