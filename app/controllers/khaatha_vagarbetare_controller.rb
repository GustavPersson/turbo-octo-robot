class KhaathaVagarbetareController < ApplicationController
  before_filter :kv_required, :only => [:login]
  before_filter :came_from_x, :only => [:wall]
  
  def came_from_x
    if (params[:found_x] != nil)
      return true
    else
      return false
    end
  end
  
  def login
    
  end
  
  def authenticate
    @kv = KaathVagarbetare.new(params[:namebox])
    is_kaathvagarbetare = KaathVagarbetare.find(:first, :conditions => ["alias = ?", @kv.name])
  end
  
  def index
  
  end
  
  def wall
    render :layout => 'wall'
  end
end