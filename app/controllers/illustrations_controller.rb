class IllustrationsController < ApplicationController
	before_filter :authenticate_admin!
  layout "admin"
  def index
    @illustrations = Illustration.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @illustration = Illustration.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @illustration = Illustration.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @illustration = Illustration.find(params[:id])
  end

  def create
    @illustration = Illustration.new(params[:illustration])

    respond_to do |format|
      if @illustration.save
        format.html { redirect_to illustrations_path, notice: 'Illustration was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @illustration = Illustration.find(params[:id])

    respond_to do |format|
      if @illustration.update_attributes(params[:illustration])
        format.html { redirect_to illustrations_path, notice: 'Illustration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @illustration = Illustration.find(params[:id])
    @illustration.destroy

    respond_to do |format|
      format.html { redirect_to illustrations_path }
    end
  end
end