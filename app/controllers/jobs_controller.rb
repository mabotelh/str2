class JobsController < ApplicationController

  def index
    @jobs = Job.search(params)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])
    if @job.save
      # Handle a successful save
      redirect_to action: :index
    else
      render 'new'
    end
  end

end
