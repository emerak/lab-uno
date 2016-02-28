class SpeciesController < ApplicationController
  def index
    @species = Specie.all
  end

  def new
    @specie = Specie.new
  end

  def create
    @specie = Specie.new(species_params)
    if @specie.save
      flash[:message] = t('species.create_succesfully')
      redirect_to species_index_path
    else
      flash[:message] = t('species.create_error')
      render :new
    end
  end

  def show
    @specie = Specie.find(params[:id])
  end
  private

  def species_params
    params.require(:specie).permit(:name)
  end

end
