class PagesController < ApplicationController
  def show
    if (params[:page]=='kinkynight')
      render 'kinkynight' #:D
    elsif (params[:page] == 'chronicle')
      render 'chronicle'
    else
      render :template => 'errors/404', :layout => false, :status => :not_found
    end
  end

  def edit
  end
  
end
