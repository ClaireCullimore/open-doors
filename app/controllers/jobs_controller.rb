class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.paginate(page: params[:page], per_page: 9).order(created_at: :desc)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.save

    redirect_to job_path(@job)
  end

  def update
    @job.update(job_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to job_path(@job)
  end

  def destroy
    @job.destroy

    redirect_to jobs_path
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :company, :location, :terms, :description)
  end
end
