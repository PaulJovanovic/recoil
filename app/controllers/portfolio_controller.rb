class PortfolioController < ApplicationController
	before_filter :get_illustrations

  def index
    render :action => "index.html.erb", :layout => "application"
  end
end
