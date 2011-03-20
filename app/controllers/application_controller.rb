class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def login_required
    if session[:logged_in]
      return true
    end
    return false
  end
  
  def current_user
    return session[:user]
  end
  
  def is_logged_in
    return session[:logged_in]
  end
end
