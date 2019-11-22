class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  
  def index
    # @tasks = Task.order(sort_column + " " + sort_direction)  
    @tasks =Task.order_by(params)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params) 

    if @task.save
      redirect_to tasks_path, notice: t('.success')
    else
      render :new
    end     
  end

  def show 
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: t('.success')
    else
      render :edit
    end     
    
  end

  def destroy
    if @task.destroy
      redirect_to tasks_path, notice: t('.success')
    else
      redirect_to tasks_path, notice: t('.faild')
    end
  end

  private
  def task_params
    params.require(:task)
          .permit(:title, :content, :end_time )
  end

  def find_task
    @task = Task.find(params[:id])
  end

end
