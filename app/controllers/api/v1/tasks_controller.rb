class Api::V1::TasksController < ApplicationController
  def indexList
    @tasks = List.find(params[:list_id]).tasks
    render json: @tasks
  end

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    task = Task.create(text: params[:text], list_id: params[:list_id], is_completed: params[:is_completed])
    render json: task
  end

  def show
    @task = Task.find(params[:id])
    render json: @task
  end

  def update
    
  end

  def edit
  end
  

  def change
    @tasks = List.find(params[:list_id]).tasks
    p @tasks
    p params[:tasks]
    @tasks.update(params[:tasks])
    render json: @tasks
  end


end