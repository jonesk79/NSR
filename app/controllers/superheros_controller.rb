class SuperherosController < ApplicationController
  def index
    @superheros = Superhero.all
  end

  def new
    @superhero = Superhero.new
  end

  def create
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
    params.require(:superhero).permit(:name, :city, :superpower, :archenemy)
  end
end

