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
    if 
      params[:query].present?
    else
      @tasks = Task.includes(plant: { photo_attachment: :blob })
    end
    @tasks_per_day = @tasks.where("due_date >= ?", Date.today).order(due_date: :asc).
      or(Task.where("due_date < ?", Date.today).where(completed: false)).group_by(&:due_date)
    
    check_weather   
    # binding.pry # continue to resume
  end

  def complete
    @task = Task.find(params[:id])
    @task.completed = true
    @task.save
    redirect_to tasks_path
  end

 

  private
  
  def check_weather
    @client = OpenWeather::Client.new(api_key: "02ec45d4d324b506bf92f98205cbef06")
    @data = @client.current_weather(city: @balcony.city, units: 'metric', lang: 'fr')
    # @forecast = @client.one_call(lat: @balcony.latitude, lon: @balcony.longitude)
  end

  # def set_task
  #   @task = Task.find(params[:id])
  # end

  def task_params
    params.require(:task).permit(:title, :completed, :category, :message, :title, :due_date)
  end
end
