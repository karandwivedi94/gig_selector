class UsersController < ApplicationController
  #before_action :check_for_admin, only: [:edit, :destroy]
  #updated this in the views, hence got rid

def index #ALL USER ACCESS
  @users = User.all
end

def new #ALL USER ACCESS
  @user = User.new
end

#Create new user - ALL USER ACCESS
def create
  @user = User.new user_params
  if @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  else
    render :new
  end
end

#Edit user - ADMIN + USER ACCESS
def edit
  @user = User.find params[:id]
  check_for_owner(@user)
end

#Update User - ADMIN + USER ACCESS
def update
  user = User.find params[:id]
  user.update user_params
  redirect_to user
end

def show - #ALL USER ACCESS
  @user = User.find params[:id]
end

def destroy - #ADMIN + USER ACCESS
  user = User.find params[:id]
  user.destroy
  redirect_to users_path
end

#Strong params
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :image)
  end
end