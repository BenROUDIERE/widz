class BalconyPlantsController < ApplicationController
  before_action :set_balcony_plants, only: [:show]
  
  def show
    @balcony_plants = BalconyPlant.new
  end

end
