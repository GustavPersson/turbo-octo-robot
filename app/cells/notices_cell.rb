class NoticesCell < Cell::Rails
  before_filter :get_notice, :only => [:remove]

  def get_notice
    
  end
  
  def display
    @notices = Notice.limit(8).order("id DESC")
    render
  end

  def add
    render
  end

  def remove
    render
  end

end
