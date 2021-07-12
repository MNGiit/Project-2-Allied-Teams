class ApplicantsController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
    @jobs = Job.all
  end

  def create
    #
    @applicant = Applicant.create(applicant_params)
    binding.pry
    # redirect_to user_jobs_path(session[:user_id])
    redirect_to applicants_path
  end

  private

  def applicant_params
    params.require(:applicant).permit(:job_id, :user_id)
end
end
