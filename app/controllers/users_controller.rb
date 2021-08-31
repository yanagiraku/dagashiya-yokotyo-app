class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @memory = Memory.where(user_id:current_user.id)

  end

  private
  def user_params
    params.require(:user, :product, :memory).permit(:nickname, :age_id)
  end
end
