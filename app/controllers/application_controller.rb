class ApplicationController < ActionController::Base
  protect_from_forgery

  def get_images
  	get_advertisings
  	get_illustrations
  	get_steps
  end

  def get_advertisings
	advertisings = Advertisement.all.map do |advertisement|
	  { :id => advertisement.id, :display => advertisement.title, :description => advertisement.description, :image => advertisement.image.url(:large) }
	end

	@advertisings = advertisings.to_json
  end

  def get_illustrations
	illustrations = Illustration.all.map do |illustration|
	  { :id => illustration.id, :display => illustration.title, :description => illustration.description, :image => illustration.image.url(:large) }
	end

	@illustrations = illustrations.to_json
  end

  def get_steps
	steps = Step.all.map do |step|
	  { :id => step.id, :display => step.step, :description => step.description, :image => step.image.url(:large) }
	end

	@steps = steps.to_json
  end
end
