class SessionsController < ApplicationController
  skip_before_action :ensure_current_user

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to user
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end