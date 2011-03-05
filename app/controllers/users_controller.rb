class UsersController < ApplicationController
  before_filter :get_user, :only => [:show, :edit]
  before_filter :login_required, :only => [:edit, :add]

  def get_user
    @user = User.find(params[:id])
  end
  
  def authenticate
    @user = User.new(params[:userform])
    valid_user = User.find(:first, :conditions => ["alias = ? and password = ?",
       @user.alias, @user.password])
      
    if valid_user
      session[:user] = valid_user
      session[:logged_in] = true
      redirect_to :action => 'login'
    else
      flash[:notice] = "Fel namn/passwordsord."
      session[:logged_in] = false
      redirect_to :action => 'login'
    end
  end
  
  def logout
    session[:logged_in] = false
    session[:user] = nil
    redirect_to :action => 'login'
  end
    
  def index
      @users = User.order(:id)
  end
  
  def show
      
  end

  def edit
    @file = "test"
    if !session[:logged_in]
      redirect_to :action => 'login'
    end
      
  end

  def add
      
  end
  
  def login
  end

end
