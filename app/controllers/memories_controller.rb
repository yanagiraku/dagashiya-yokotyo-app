class MemoriesController < ApplicationController
  def index
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

  private

  def  memory_params
    params.require(:memory).permit(:title, :memory).merge(user_id: current_user.id)
  end
end
