class NoticesController < ApplicationController
  before_filter :login_required

  def add
    if !session[:logged_in]
      redirect_to :action => 'login'
    end
    if params['form']
      @form = params['form']
      
      #lägg till user
      Notice.create(
      :caption => @form[:caption],
      :text    => @form[:text]
      )
      redirect_to :back
    end
  end

  def edit
  end

  def delete
  end

end
