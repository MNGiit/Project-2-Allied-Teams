class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find_by(id: params[:id])
    if !@job
      redirect_to "/" # new_job_path
    end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    redirect_to user_jobs_path(session[:user_id])
  end

  def filter
    if !params[:query_location].blank?
      # find jobs
      Job.find_each(:location => params[:query_location]) do |j|
        @jobs << j
      end
      @jobs
    elsif !params[:query_department].blank?
      # find jobs
      Job.find_each(:department => params[:query_department]) do |j|
        @jobs << j
      end
      @jobs
    elsif !params[:query_function].blank?
      # find jobs
      Job.find_each(:function => params[:query_function]) do |j|
        @jobs << j
      end
      @jobs
    else
      redirect_to user_jobs_path
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :code, :description, :industry, :function, :employment_type, :experience_from, :experience_upto, :positions,
      :annual_salary_from, :annual_salary_upto, :currency, :show_salary_details, :department, :location)
  end
end
