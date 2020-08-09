class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = 'Register successfully'
      redirect_to root_path
    else
      flash[:alert] = 'Register failed'
      render :new
    end
  end

  def user_params
    params.require(:user).permit :email, :name, :password, :password_confirmation
  end
end
