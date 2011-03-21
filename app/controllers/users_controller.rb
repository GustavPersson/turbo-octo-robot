class UsersController < ApplicationController
  before_filter :get_user, :only => [:show, :edit]
  before_filter :login_required, :only => [:edit, :add]

  def get_user
    if ( params[:alias] != nil )
      @user = User.find(:first, :conditions => ["alias = ?", params[:alias] ])
    else
      @user = User.find(params[:id])
    end
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
    if !session[:logged_in]
      redirect_to :action => 'login'
    end
    if params['form']
      save_edit
    end
  end
  
  def upload_image
    require 'fileutils'
    @file = params['form'][:file]
    @user = User.find(params['form'][:id])
    #rescue_from här typ för o kolla om filen inte finns på filsystemet
    if (!@user.image.empty?)
      FileUtils.remove("#{RAILS_ROOT}/public/images/users/#{@user.image}", :force => true) #rescue FileNotFound
    end
    
    FileUtils.copy(@file.path, "#{RAILS_ROOT}/public/images/users/#{@file.original_filename}")
    @user.update_attributes(
      :image => @file.original_filename
    )
    
    redirect_to :back
  end

  def save_edit
    @user = User.find(params['form'][:id])
    @form = params['form']
    
    @user.update_attributes(
      :alias => @form[:alias],
      :password => @form[:password],
      :date => @form[:date],
      :msn => @form[:msn],
      :email => @form[:email],
      :description => @form[:description]
      )
    
    redirect_to :back
  end


  def add
    if !session[:logged_in]
      redirect_to :action => 'login'
    end
    if params['form']
      @form = params['form']
      
      #fixa encoding här
      if @form[:alias].empty? || @form[:password].empty?
        redirect_to :back, :notice => "Bade alias och losenord maste ha varden, smarto!" and return
      end
      
      #lägg till user
      User.create(
      :alias => @form[:alias],
      :password => @form[:password],
      :name => @form[:name],
      :date => @form[:date], 
      :msn => @form[:msn],
      :email => @form[:email],
      :description => @form[:description]
      )
      redirect_to :action => 'index'
    end
  end
  
  def login
  end

end
