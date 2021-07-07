class ApplicantsController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
    @jobs = Job.all
  end
end
