class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :current_user

  helper_method :logged_in?, :current_user

  def logged_in?
    @current_user.present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
