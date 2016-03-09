class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Thanks #{@user.username}! You successfully registered"
      redirect to user
    else
      render :new
    end
  end

  def show
    @user = User.find(:id)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end