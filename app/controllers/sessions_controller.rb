class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user] = user.id
      redirect_to jobs_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to jobs_path, notice: "Adios!"
  end
end