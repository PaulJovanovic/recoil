class PortfolioController < ApplicationController
	before_filter :get_images

  def index
  	@about = About.all.last

    render :action => "index.html.erb", :layout => "application"
  end
end
