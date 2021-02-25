class SessionsController < ApplicationController

# The guide for this specified "username", I had already used name in the database. If things do not work I may need to change things back

  def create
    @user = User.find_by(name: session_params[:name])

    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      render json: {
        logged_in: true,
        user: @user
      }
    else
      render json: {
        status: 401,
        errors: ['no such user, please try again']
      }
    end
  end

  def is_logged_in?
    if session[:user_id] && current_user
      render json: {
        logged_in: true,
        user: current_user
      }
    else
      render json: {
        logged_in: false,
        message: 'no such user'
      }
    end
  end

  def destroy
    session[:user_id] = nil
    render json: {
      status: 200,
      logged_out: true
    }
  end

  private
  def session_params
    params.require(:user).permit(:name, :password)
  end
end
