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

  end

  private

  def job_params

  end
end
