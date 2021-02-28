class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :current_user

  helper_method :logged_in?, :current_user

  def current_user
    @current_user = User.find session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present?
  end

  def logged_in?
    @current_user.present?
  end

end
