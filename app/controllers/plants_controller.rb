class PlantsController < ApplicationController
  before_action :set_plant, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @plants = Plant.global_search(params[:query])
    else
      @plants = Plant.all.order('name ASC')
    end
  end
  
  def show
    @plant = Plant.find(params[:id])
    @balcony_plant = BalconyPlant.new(plant_id: @plant.id)
    @plant_is_already_on_balcony = BalconyPlant.where(plant: @plant, balcony: current_user.balcony).exists?

    @last_done_tasks = current_user.balcony.tasks.
      joins(:balcony_plant).
      where(balcony_plants: { plant: @plant }, completed: true).
      where(Task.arel_table[:updated_at].gt(Date.today - 2.weeks)).
      order(updated_at: :desc).
      limit(3)
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    params.require(:plant).permit(:name, :luminosity, :category, :water_need, :description, :water_frequency_in_days, :plantation_months, :harvest_months, :min_temp, :max_temp, :spacing_in_cm, :disease, :photo)
  end
end