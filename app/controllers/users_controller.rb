class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @user = User.new user_params
  end

  def info
    user = :user_id,
    email = :email,
    about_me = :about_me

    render :json => {
      :user_id => user_id,
      :email => email,
      :about_me => about_me
    }
  end

  private
  def user_params
    params_require(:user_id).permit(:email, :about_me)
  end
end
