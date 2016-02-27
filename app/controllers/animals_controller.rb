class AnimalsController < ApplicationController

  before_filter :find_animal, only: [:edit, :update, :destroy, :show]
  before_filter :find_zoo

  def index
    @animals = @zoo.animals
  end

  def new
    @animal = @zoo.animals.build
  end

  def create
    @animal = @zoo.animals.build(animal_params)
    if @animal.save
      flash[:message] = t('zoo.create_succesfully')
      redirect_to zoo_animals_path
    else
      flash[:message] = t('zoo.create_error')
      render :new
    end
  end

  def show

  end


  private
  def animal_params
    params.require(:animal).permit(:name, :specie_id)
  end

  def find_zoo
    @zoo = Zoo.find(params[:zoo_id])
  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end