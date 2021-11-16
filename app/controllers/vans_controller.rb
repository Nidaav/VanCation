class VansController < ApplicationController
  before_action :set_van, only: [:show]
  def index
    @vans = Van.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_van
    @van = Van.find(params[:id])
  end

  def vans_params
    params.require(:vans).permit(:model, :capacity, :description, :price)
  end
end
