class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def login_required
    if session[:user]
      return true
    end
  end
  
  def current_user
    return session[:user]
  end
  
  def is_logged_in
    return session[:logged_in]
  end
end
