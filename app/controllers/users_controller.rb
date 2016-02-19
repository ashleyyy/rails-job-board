class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(strong_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to jobs_path
    else
      render :new
    end

    protected

    def strong_params
      params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
