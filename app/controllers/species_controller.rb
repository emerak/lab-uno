class SpeciesController < ApplicationController
  before_filter :find_specie, only: [:update, :edit, :show, :destroy]

  def index
    @species = Specie.all.order(:name).page params[:page]
  end

  def new
    @specie = Specie.new
  end

  def create
    @specie = Specie.new(specie_params)
    if @specie.save
      # you could pass the mesage as a param on the redirect 
      flash[:notice] = t('species.create_succesfully')
      redirect_to species_index_path
    else
      flash[:notice] = t('species.create_error')
      render :new
    end
  end

  def update
    if @specie.update(specie_params)
      flash[:notice] = t('species.create_succesfully')
      redirect_to species_index_path
    else
      flash[:notice] = t('species.create_error')
      render :new
    end
  end

  def destroy
    flash[:notice] = if @specie.destroy
                        t('specie.destroy_succesfully')
                      else
                        t('specie.destroy_error')
    end
    redirect_to species_index_path
  end

  def show
  end

  def edit
  end

  private

  def specie_params
    params.require(:specie).permit(:name)
  end

  def find_specie
    @specie = Specie.find(params[:id])
  end
end
