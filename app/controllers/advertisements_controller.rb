class AdvertisementsController < ApplicationController
	before_filter :authenticate_admin!
  layout "admin"
  
  def index
    @advertisements = Advertisement.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @advertisement = Advertisement.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @advertisement = Advertisement.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @advertisement = Advertisement.find(params[:id])
  end

  def create
    @advertisement = Advertisement.new(params[:advertisement])

    respond_to do |format|
      if @advertisement.save
        format.html { redirect_to advertisements_path, notice: 'Advertisement was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @advertisement = Advertisement.find(params[:id])

    respond_to do |format|
      if @advertisement.update_attributes(params[:advertisement])
        format.html { redirect_to advertisements_path, notice: 'Advertisement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy

    respond_to do |format|
      format.html { redirect_to advertisements_path }
    end
  end
end