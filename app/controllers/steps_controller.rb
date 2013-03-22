class StepsController < ApplicationController
	before_filter :authenticate_admin!
  layout "admin"
  
  def index
    @steps = Step.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @step = Step.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def new
    @step = Step.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @step = Step.find(params[:id])
  end

  def create
    @step = Step.new(params[:step])

    respond_to do |format|
      if @step.save
        format.html { redirect_to steps_path, notice: 'Step was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @step = Step.find(params[:id])

    respond_to do |format|
      if @step.update_attributes(params[:step])
        format.html { redirect_to steps_path, notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @step = Step.find(params[:id])
    @step.destroy

    respond_to do |format|
      format.html { redirect_to steps_path }
    end
  end
end