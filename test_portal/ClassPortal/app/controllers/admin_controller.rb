class AdminController < ApplicationController
  before_action :logged_in
  def index
    @user = User.find(session[:id])
  end

  def show
    @users = User.all
    @courses = Course.all
  end

  def showcourse

  end

  private

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:email, :name, :password, :is_admin, :is_instructor)
  end
end