class JobsController < ApplicationController
  def index
    # @jobs = Job.all
    @jobs = Job.where(nil)
    @jobs = @jobs.filter_function(params[:query]) if params[:query].present?
    @jobs = @jobs.filter_location(params[:query_location]) if params[:query_location].present?
    @jobs = @jobs.filter_department(params[:query_department]) if params[:query_department].present?
  end

  def show
    @job = Job.find_by(id: params[:id])
    @applicant = Applicant.new
    if !@job
      redirect_to "/" # new_job_path
    end
  end

  def new
    @titles = ['web developer', 'web designer', 'software developer', 'graphic artist', 'writer']
    @job = Job.new
    # render json: { birds: ['robin', 'bluebird']}.to_json
  end

  def create
    @job = Job.create(job_params)
    redirect_to user_jobs_path(session[:user_id])
  end

  private

  def job_params
    params.require(:job).permit(:title, :code, :description, :industry, :function, :employment_type, :experience_from, :experience_upto, :positions,
      :annual_salary_from, :annual_salary_upto, :currency, :show_salary_details, :department, :location)
  end

  def filter_params
    params.permit(:query, :query_department, :query_location)
  end
end
