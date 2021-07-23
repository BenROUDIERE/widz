class BalconyPlantsController < ApplicationController
  before_action :set_balcony_plants, only: [:show]
  
  def show
    @balcony_plants = BalconyPlant.new
  end

  def batch_create
    @balcony = Balcony.where(user: current_user).find(params[:balcony_id])

    if @balcony.update(balcony_params)
      # no stuff to do
    else
      flash[:error] = "Erreur lors de l'ajout de plantes"
    end

    redirect_to @balcony # == redirect_to balcony_path(@balcony)
  end
  
  private

  def balcony_params
    params.require(:balcony).permit(plant_ids: [])
  end
end
