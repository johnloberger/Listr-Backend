class Api::V1::ListsController < ApplicationController

  def index
    @lists = List.all
    render json: @lists
  end

  def show
    @list = List.find(params[:id])
    render json: @list
  end

  def create
    list = List.create(name: params[:name], user_id: params[:user_id])
    render json: list
  end

  def update
    @list = List.find_by(slug: params[:slug])
    @tasks = @list.tasks
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    render json: @list
  end


end
