class SuperherosController < ApplicationController
  def index
    @cities = City.all
    @superheros = Superhero.order(city_id: :asc, superpower: :asc)
    if params[:search]
      @query = params[:search]
      @results = Superhero.basic_search(@query)
      render :search_results
    end
  end

  def new
    @superhero = Superhero.new
  end

  def create
    # @city = City.find(params[:superhero][:city_id])
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      flash[:notice] = "Superhero added."
      redirect_to superheros_path
    else
      render 'new'
    end
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def edit
    @superhero = Superhero.find(params[:id])
  end

  def update
    @superhero = Superhero.find(params[:id])
    if @superhero.update(superhero_params)
      flash[:notice] = "Superhero updated."
      redirect_to superhero_path
    else
      render 'edit'
    end
  end

  def destroy
    @superhero = Superhero.find(params[:id])
    @superhero.destroy
    flash[:notice] = "Superhero deleted."
    redirect_to superheros_path
  end

private
  def superhero_params
    params.require(:superhero).permit(:name, :city_id, :superpower, :archenemy)
  end
end

