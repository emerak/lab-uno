class ZoosController < ApplicationController

  before_filter :find_zoo, only: [:edit, :update]

  def index
    @zoos = Zoo.all
  end

  def edit
  end

  def update
    if @zoo.update(zoo_params)
      flash[:message] = t('zoo.update_succesfully')
      redirect_to zoos_path
    else
      flash[:message] = t('zoo.update_error')
      render :edit
    end
  end

  private

  def zoo_params
    params.require(:zoo).permit(:name)
  end

  def find_zoo
    @zoo = Zoo.find(params[:id])
  end
end
