class AboutsController < ApplicationController
	before_filter :authenticate_admin!
  layout "admin"
  
  def index
    @abouts = About.all

    if @abouts.count > 0
      redirect_to edit_about_path @abouts.last
    else
      redirect_to new_about_path
    end
  end

  def new
    @about = About.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @about = About.all.last
  end

  def create
    @about = About.new(params[:about])

    respond_to do |format|
      if @about.save
        format.html { redirect_to abouts_path, notice: 'About was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @about = About.find(params[:id])

    respond_to do |format|
      if @about.update_attributes(params[:about])
        format.html { redirect_to admins_path, notice: 'About was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy

    respond_to do |format|
      format.html { redirect_to abouts_path }
    end
  end
end