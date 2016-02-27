class AnimalsController < ApplicationController

  before_filter :find_animal, only: [:edit, :update, :destroy, :show]
  before_filter :find_zoo, only: [:index]

  def index
    @animals = @zoo.animals
  end

  private

  def find_zoo
    @zoo = Zoo.find(params[:zoo_id])
  end

  def find_animal
    @animal = Animal.find(params[:id])
  end
end
