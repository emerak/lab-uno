class AnimalsController < ApplicationController
  before_filter :find_animal, only: [:edit, :update, :destroy, :show]
  before_filter :find_zoo, only: [:index, :new, :edit, :create]

  def index
    @animals = @zoo.animals.order(:name).page params[:page]
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

  def update
    if @animal.update(animal_params)
      flash[:message] = t('animal.update_succesfully')
      redirect_to zoo_animals_path
    else
      flash[:message] = t('animal.update_error')
      render :edit
    end
  end

  def destroy
    flash[:message] = if @animal.destroy
                        t('animal.destroy_succesfully')
                      else
                        t('animal.destroy_error')
    end
    redirect_to zoo_animals_path
  end

  def show
  end

  def edit
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :specie_id, :description)
  end

  def find_zoo
    @zoo = Zoo.find(params[:zoo_id])
  end

  def find_animal
    # with this code you could find an animal in another zoo
    @animal = Animal.find(params[:id])
  end
end
