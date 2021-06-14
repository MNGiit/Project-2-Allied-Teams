class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show

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
