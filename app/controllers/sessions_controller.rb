class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params [:email])

    if user && user.authenticate(params[:password])
      session[:user] = user.id
      redirect_to jobs_path
    else
      render :new
  end
end