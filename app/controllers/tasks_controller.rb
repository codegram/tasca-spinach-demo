class TasksController < ApplicationController
  def index
    @pending_tasks = Task.pending
    @closed_tasks = Task.closed
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    redirect_to action: :index
  end

  def close
    @task = Task.find(params[:id])
    @task.close
    redirect_to action: :index
  end
end
