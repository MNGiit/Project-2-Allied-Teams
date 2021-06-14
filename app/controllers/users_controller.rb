class UsersController < ApplicationController
  def new # signup
    if !session[:user_id]
      @user = User.new
    else
      redirect_to "/" # root_path
    end
  end

  def create #signup
    @user = User.create(user_params)
    # can check to see if it's valid @user.valid?
    session[:user_id] = @user.id
    redirect_to "/" # redirect to user page?
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :filling_position, :password)
  end
end
