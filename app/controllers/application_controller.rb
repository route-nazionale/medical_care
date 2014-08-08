class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_user

  helper_method :current_user
  helper_method :current_location

  private

  def check_user
    unless params[:controller] == 'sessions'
      redirect_to log_in_path unless current_user
    end
  end

  def current_user
    @current_user ||= Human.find(session[:user_id]) if session[:user_id]
  end
  def current_location
    @current_location ||= Location.find(session[:location]) if session[:location]
  end
end
