class ApplicationController < ActionController::Base
  protect_from_forgery

  def get_illustrations
	illustrations = Illustration.all.map do |illustration|
	  { :id => illustration.id, :title => illustration.title, :description => illustration.description, :image => illustration.image.url }
	end

	@illustrations = illustrations.to_json
  end
end
