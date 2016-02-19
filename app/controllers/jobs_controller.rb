class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
    @user = User.find(@job.user_id)
  end

  def new
    @user = User.find(current_user.id)
    @job = @user.jobs.build
  end

  def edit
  end

  def create
    @job = Job.new(strong_params)
    @job.user_id = current_user.id
 
    @job.save
    redirect_to @job
  end

  def update
  end

  def destroy
  end

  private
    def strong_params
      params.require(:job).permit(:title, :company, :location, :salary, :jobs_per_week, :duration, :qualifications, :description, :hours_per_week)
    end
end
