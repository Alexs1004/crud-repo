class TasksController < ApplicationController
  def index
   @tasks = Task.all
  end
  
  def show
    @task = Task.find(task_params)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end

  def edit
    @task = Task.find(task_params)
  end
  

  def update
    @task = Task.find(task_params)
    @task.update(params[:task])
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(task_params)
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
