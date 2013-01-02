class HomeController < ApplicationController

  layout 'application_with_slider', :only => [:index]

  before_filter :require_login, :only => [:settings]
  
  def index
  end
  
  def save_visitor
    @visitor = Visitor.new(:email => params[:email])
    if @visitor.valid? && @visitor.save
      flash[:message] = "Success to save email"
      redirect_to "/" 
    else
      index
    end
  end
  
  def static_page
    render params[:content]
  end

end
