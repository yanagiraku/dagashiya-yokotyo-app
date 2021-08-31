class MemoriesController < ApplicationController
  def index
    @memory = Memory.all
  end

  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @memory = Memory.find(params[:id])
  end

  def update
    @memory = Memory.find(params[:id])
    if  @memory.update(memory_params)
      redirect_to root_path
    else
      render :show
    end
  end

  def destroy
    @memory = Memory.find(params[:id])
    if @memory.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def  memory_params
    params.require(:memory).permit(:title, :memory).merge(user_id: current_user.id)
  end
end
