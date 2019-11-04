class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  
  def index
    @tasks = Task.limit(10)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params) 

    if @task.save
      redirect_to tasks_path, notice: "Add Success!"
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
      redirect_to tasks_path, notice: "Update Success!"
    else
      render :edit
    end     
    
  end

  def destroy
    if @task.destroy
      redirect_to tasks_path, notice: "Delete Success!"
    else
      redirect_to tasks_path, notice: "Delete Failed!"
    end
  end

  private
  def task_params
    params.require(:task)
          .permit(:title, :content)
  end

  def find_task
    @task = Task.find(params[:id])
  end


end