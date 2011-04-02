class KinkynightController < ApplicationController
  before_filter :get_text
  
  def get_text
    @text = Kinkynight.find(:last)
  end
  
  def show
  end

  def edit
  end
  
  def save_edit
    @form = params['form']
    
    Kinkynight.create(
      :text => @form['text']
    )
    
    redirect_to :action => :show
  end

end
