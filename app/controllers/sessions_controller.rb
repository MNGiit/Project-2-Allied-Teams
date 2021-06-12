class SessionsController < ApplicationController
  def new #signup
    if !session[:user_id]
      @user = User.new
    else
      redirect_to "/"
    end
  end

  def create #login

  end

  def destroy #logout

  end
end
