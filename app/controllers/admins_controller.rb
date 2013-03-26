class AdminsController < ApplicationController
	before_filter :authenticate_admin!
	layout "admin"

	def index
		respond_to do |format|
			format.html
		end
	end

	def show
		redirect_to portfolio_index_path
	end

end