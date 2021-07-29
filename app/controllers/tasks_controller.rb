require 'json'

class TasksController < ApplicationController
  # before_action :set_task, only: [:index]
  

  def new
    @task = Task.new
  end

  def create
    @balcony    = Balcony.where(user: current_user).find(params[:balcony_id])
    @plant      = Plant.find(params[:plant_id])
    @task       = Task.new(task_params)
    @task.plant = @plant
    
    if @task.save

      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def index
    @balcony = current_user.balcony
    check_weather
    @tasks = @balcony.tasks
    @tasks_per_day = @tasks.where("due_date >= ?", Date.today).order(due_date: :asc).
      or(@tasks.where("due_date < ?", Date.today).where(completed: false)).group_by(&:due_date)

  end

  def complete
    @task = Task.find(params[:id])
    @task.completed = true
    @task.save
    
    respond_to do |f|
      f.text do 
        render(partial: "tasks/task_card_stimulus" , locals: { task: @task, due_date: @task.due_date }, formats: [:html])
      end
    end
  end

 

  private
  
  def check_weather
    @client = OpenWeather::Client.new(api_key: "02ec45d4d324b506bf92f98205cbef06")
    @data = @client.current_weather(city: @balcony.city, units: 'metric', lang: 'fr')
    # @forecast = @client.one_call(lat: @balcony.latitude, lon: @balcony.longitude)
    @maximum_temp = @data.main.temp_max.to_i
    @minimum_temp = @data.main.temp_min.to_i
    balcony_plant_to_care_about = current_user.balcony_plants.joins(:plant).
      where("plants.max_temp < ? OR plants.min_temp > ?", @maximum_temp, @minimum_temp)
    

    balcony_plant_to_care_about.each do |balcony_plant|
      Task.find_or_create_by!(due_date: Date.today, category: "abriter" , message: "Alerte température, abritez votre plante!" , title: "Abriter" , balcony_plant: balcony_plant)
    end
  end

  # def set_task
  #   @task = Task.find(params[:id])
  # end

  def task_params
    params.require(:task).permit(:title, :completed, :category, :message, :title, :due_date)
  end
end
