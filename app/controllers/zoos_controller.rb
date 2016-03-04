class ZoosController < ApplicationController
  before_filter :find_zoo, only: [:edit, :update, :destroy, :show]

  def index
    @zoos = Zoo.all.order(:name).page params[:page]
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
    flash[:message] = if @zoo.destroy
                        t('zoo.destroy_succesfully')
                      else
                        t('zoo.destroy_error')
    end
    redirect_to zoos_path
  end

  def edit
  end

  def show
  end

  private

  def zoo_params
    params.require(:zoo).permit(:name)
  end

  def find_zoo
    @zoo = Zoo.find(params[:id])
  end
end
