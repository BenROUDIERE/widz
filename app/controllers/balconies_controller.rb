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

      redirect_to balcony_path(@balcony)
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

  def weather
    @balcony = current_user.balcony
    @client = OpenWeather::Client.new(api_key: "02ec45d4d324b506bf92f98205cbef06")
    @data = @client.current_weather(city: balcony.city, units: "metric", lang: "fr")
    @forecast = @client.one_call(lat: @balcony.latitude, lon: balcony.longitude)
  end

  private

  def set_balcony
    @balcony = Balcony.find(params[:id])
  end

  def balcony_params
    params.require(:balcony).permit(:title, :luminosity, :city, :size, :rain_exposed, :number_of_plants_desired, :water_need, categories: [])
  end
end 