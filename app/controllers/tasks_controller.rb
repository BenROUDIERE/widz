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
    if params[:query].present?
      @tasks = Task.global_search(params[:query])
    else
      @tasks = Task.all
    end
    @tasks_per_day = @tasks.order('due_date ASC').group_by(&:due_date)
  end

  private

  # def set_task
  #   @task = Task.find(params[:id])
  # end

  def task_params
    params.require(:task).permit(:title, :completed, :category, :message, :title, :due_date)
  end
end
