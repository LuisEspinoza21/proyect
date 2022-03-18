class AreasController < ApplicationController
  def index
    @areas = Area.all
  end
  def new
    @area = Area.new
  end
  def show
    @area = Area.find(params[:codigo_area])
  end
  
  def create
    @area = Area.new(params[:codigo_area],[nombre_area])
    if @area.save 
      flash[:success] = "Object successfully created"
      redirect_to  @areas_pash
    else 
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end 
  
end

