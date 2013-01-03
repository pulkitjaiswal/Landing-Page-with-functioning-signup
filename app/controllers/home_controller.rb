class HomeController < ApplicationController

  layout 'application_with_slider', :only => [:index, :save_visitor]

  before_filter :require_login, :only => [:settings]
  
  def index
    @visitor = Visitor.new
  end
  
  def save_visitor
    @visitor = Visitor.new(params[:visitor])
    if @visitor.save
      flash[:thanks_visitor] = "Thank you!"
      UserNotifier.visitor_greeting(@visitor).deliver
      redirect_to "/" 
    else
      render "/home/index"
    end
  end
  
  def static_page
    render params[:content]
  end

end
