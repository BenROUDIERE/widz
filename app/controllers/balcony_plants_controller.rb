class BalconyPlantsController < ApplicationController
  before_action :set_balcony_plants, only: [:show]
  
  def show
    @balcony_plants = BalconyPlant.new
  end

  def create
    @balcony = Balcony.where(user: current_user).find(params[:balcony_id])

    @balcony.balcony_plants.create(balcony_plant_params)

    redirect_to @balcony
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

  def plant
    @balcony_plant         = current_user.balcony_plants.find(params[:id])
    @balcony_plant.planted = true
    @balcony_plant.save
    @end_period            = Date.today + 15.days
    @plant_watering        = @balcony_plant.plant.water_frequency_in_days.days
    @start_watering        = Date.today
    
    @water_dates = []
    @water_dates << @start_watering

    until @water_dates.last >= @end_period
      @water_dates << @water_dates.last + @plant_watering
    end

    @water_dates.each do |date|
      Task.create!(due_date: date, category: "arrosage" , message: "Un peu d'eau me ferait du bien !" , title: "Arrosage" , balcony_plant: @balcony_plant)
    end
    # redirect_to balcony_path(@balcony_plant.balcony)
    render partial: "balconies/planted_plant", locals: { balcony_plant: @balcony_plant }
  end
  
  private

  def balcony_params
    params.require(:balcony).permit(plant_ids: [])
  end
  
  def balcony_plant_params
    params.require(:balcony_plant).permit(:plant_id)
  end
end
