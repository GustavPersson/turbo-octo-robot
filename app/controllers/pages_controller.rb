class PagesController < ApplicationController
  def show
    if (!params[:page].empty?)
      render params[:page] #:D
    else
      render :template => 'errors/404', :layout => false, :status => :not_found
    end
  end
  #prova göra en quotes-action och se om render kör den istället för bara view.


  def edit
  end
  
end
