class PlantsController < ApplicationController
  before_action :set_plant, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :luminosity, :category, :water_need, :description, :water_frequency_in_days, :plantation_months, :harvest_months, :min_temp, :max_temp, :spacing_in_cm, :disease, :photo)
  end
end