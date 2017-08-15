class TaskController < ApplicationController
# As a user I can list tasks
# As a user I can view the details of a task
# As a user I can add a task in my To Do list
# As a user I can edit the details of a task
# As a user I can remove a task from my To Do list
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

   def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)

  end
end
