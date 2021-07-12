class ApplicantsController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
    @jobs = Job.all
    @jobs = @jobs.filter_function(params[:query]) if params[:query].present?
    @jobs = @jobs.filter_location(params[:query_location]) if params[:query_location].present?
    @jobs = @jobs.filter_department(params[:query_department]) if params[:query_department].present?
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
