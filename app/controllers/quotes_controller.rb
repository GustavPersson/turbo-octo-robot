class QuotesController < ApplicationController
  
  before_filter :login_required, :only => [:add, :store_quote]
  
  def show
    @quotes = Quote.find(:all)
  end
  
  def add
  end
  
  def store_quote
    @form = params['form']
    Quote.create(:user_alias =>@form[:alias], :text => @form[:quote])
    redirect_to :action => 'show'
  end
  
end
