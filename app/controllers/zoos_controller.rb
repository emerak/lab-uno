class ZoosController < ApplicationController

  before_filter :find_zoo, only: [:edit, :update, :destroy]

  def index
    @zoos = Zoo.all
  end

  def new
    @zoo = Zoo.new
  end

  def create
    @zoo = Zoo.new(zoo_params)
    if @zoo.save
      flash[:message] = t('zoo.create_succesfully')
      redirect_to zoos_path
    else
      flash[:message] = t('zoo.create_error')
      render :new
    end
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

  def destroy
    if @zoo.destroy
      flash[:message] = t('zoo.destroy_succesfully')
    else
      flash[:message] = t('zoo.destroy_error')
    end
    redirect_to zoos_path
  end

  private

  def zoo_params
    params.require(:zoo).permit(:name)
  end

  def find_zoo
    @zoo = Zoo.find(params[:id])
  end
end
