class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def prevent_login_signup
    if session[:user_id]
      redirect_to show_path(session[:user_id])
    end
  end

end
