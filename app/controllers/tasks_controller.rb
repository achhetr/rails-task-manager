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

  private
  
  def task_attributes
    params.require(:task).permit(:title, :details, :completed)  
  end
end
