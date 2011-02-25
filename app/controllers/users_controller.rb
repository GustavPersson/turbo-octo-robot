class UsersController < ApplicationController
  before_filter :get_user, :only => [:show, :edit]

  def get_user
    @user = User.find(params[:id])
  end
    
  def index
      @users = User.all
  end
  
  def show
      
  end

  def edit
      
  end

  def add
      
  end
  
  def login
    
  end

end
