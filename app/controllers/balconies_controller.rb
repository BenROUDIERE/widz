class BalconiesController < ApplicationController
before_action :set_balcony, only: [:show]

  def new
    return redirect_to current_user.balcony if current_user.balcony
    @balcony = Balcony.new
  end

  def create
    @user    = current_user
    @balcony = Balcony.new(balcony_params)

    @balcony.user = @user
    if @balcony.save
      redirect_to balcony_plant_path(@user)
    else
      #raise
      render :new
    end
  end

  def show 
    @balcony          = Balcony.find(params[:id])
    @balcony_plants   = current_user.balcony_plants
    @suggested_plants = Plant.limit(5)
  end


  private

  def set_balcony
    @balcony = Balcony.find(params[:id])
  end

  def balcony_params
    params.require(:balcony).permit(:title, :luminosity, :city, :size, :rain_exposed, :number_of_plants_desired, :water_need, categories: [])
  end
end 