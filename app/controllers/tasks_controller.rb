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
    @task.save
    redirect_to task_path(params["id"])
  end

  def delete
    @task = Task.find(params["id"])
    @task.destroy
    redirect_to tasks_path
  end

  private
  
  def task_attributes
    params.require(:task).permit(:title, :details, :completed)  
  end
end
