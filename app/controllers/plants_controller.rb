class PlantsController < ApplicationController
  #GET /plants
  def index
      plants = Plant.all
      render json: plants, status: :ok
  end
  #GET /plants/:id #show action
  def show
      plant = Plant.find(params[:id])
      render json: plant, status: :ok
  end

  #POST /plants 
  def create
      new_plant = Plant.create(plant_params )
      render json: new_plant, status: :created
  end

  #params for mass assignment
  private
  def plant_params
      params.permit(:name, :image, :price)
  end
end