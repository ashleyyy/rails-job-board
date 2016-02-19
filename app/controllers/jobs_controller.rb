class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
     @job = Job.new(strong_params)
 
    @job.save
    redirect_to @job
  end

  def update
  end

  def destroy
  end

  private
    def strong_params
      params.require(:job).permit(:title, :company, :location, :description)
    end
end
