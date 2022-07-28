class UsersController < ApplicationController
  #before_action :check_for_admin, only: [:edit, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
    check_for_owner(@user)
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user
  end

  def show
    @user = User.find params[:id]
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :image)
  end
end