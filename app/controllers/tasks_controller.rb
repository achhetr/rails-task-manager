class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def find 
    @task = Task.find(params["id"])
  end

  def create
    @task = Task.new(task_attributes)
    @task.save
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params["id"])
  end
  
  def update
    @task = Task.find(params["id"])
    @task.update(task_attributes)
    redirect_to task_path(params["id"])
  end

  private
  
  def task_attributes
    params.require(:task).permit(:title, :details, :completed)  
  end
end
