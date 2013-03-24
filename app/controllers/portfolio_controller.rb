class PortfolioController < ApplicationController
	before_filter :get_images

  def index
    render :action => "index.html.erb", :layout => "application"
  end
end
