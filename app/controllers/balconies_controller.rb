class BalconiesController < ApplicationController
before_action :set_balcony, only: [:show]

  def new
    @balcony = Balcony.new
  end

  def create
    @user = current_user
    @balcony = Balcony.new(balcony_params)
    p balcony_params
    @balcony.user = @user
    if @balcony.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show 
    @balcony = Balcony.find(params[:id])
  end


  private

  def set_balcony
    @balcony = Balcony.find(params[:id])
  end

  def balcony_params
    params.require(:balcony).permit(:title, :luminosity, :city, :size, :rain_exposed, :number_of_plants_desired, :water_need, categories: [])
  end
end 