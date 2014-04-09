class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      flash[:notice] = "City added."
      redirect_to cities_path
    else
      render 'new'
    end
  end

  def show
    @city = City.find(params[:id])
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.update(city_params)
      flash[:notice] = "City updated."
      redirect_to city_path
    else
      render 'edit'
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    flash[:notice] = "City deleted."
    redirect_to cities_path
  end

private
  def city_params
    params.require(:city).permit(:name)
  end
end
