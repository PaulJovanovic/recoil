class PortfolioController < ApplicationController
  def index
  	@illustrations = Illustration.all
  	
    render :action => "index.html.erb", :layout => "application"
  end
end
