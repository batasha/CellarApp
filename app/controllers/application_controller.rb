class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def require_login
    unless @current_user
      redirect_to 'login'
    end
  end
end
