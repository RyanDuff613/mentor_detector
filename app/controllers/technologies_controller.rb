class TechnologiesController < ApplicationController


  def index
    @technologies = Technology.all
    render :index
  end

  def new
    @technology = Technology.new
    render :new
  end

  def create 
    @technology = Technology.new(technology_params)
    if @technology.save
      redirect_to technologies_path
    else
      render :new
    end
  end

  def edit 
    @technology = Technology.find(params[:id])
    render :edit
  end

  def show
    @technology = Technology.find(params[:id])
    render :show
  end

  def update
    @technology = Technology.find(params[:id])
    if @technology.update(technology_params)
      redirect_to technologies_path
    else 
      render :edit
    end
  end

  def destroy
    @technology = Technology.find(params[:id])
    @technology.destroy
    redirect_to technologies_path
  end

  private
    def technology_params
      params.require(:technology).permit(:description, :technology)
    end

end