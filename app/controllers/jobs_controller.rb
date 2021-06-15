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
    redirect_to user_jobs_path
  end

  def filter
    if !params[:query_location].blank?
      # find jobs
    elsif !params[:query_department].blank?
      # find jobs
    elsif !params[:query_function].blank?
      # find jobs
    else
      redirect_to user_jobs_path
    end
  end
  
  private

  def job_params
    params.require(:job).permit(:location, :department, :function, :description, :visible)
  end
end
