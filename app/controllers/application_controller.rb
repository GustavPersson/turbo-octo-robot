class ApplicationController < ActionController::Base
  protect_from_forgery

  def login_required
    if !session[:logged_in]
      redirect_to login_path() and return
    end
  end
  
  def current_user
    return session[:user]
  end
  
  def is_logged_in
    if session[:logged_in].nil?
      return false
    else
      return session[:logged_in]
    end
  end
  
end