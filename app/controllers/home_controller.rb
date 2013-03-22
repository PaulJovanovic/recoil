class HomeController < ApplicationController
  def index
    render :action => "index.html.erb", :layout => "landing"
  end
end
