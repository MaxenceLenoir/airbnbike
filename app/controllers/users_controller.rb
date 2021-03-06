class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render :show
    authorize @user
  end

  private 

  def user_params
      params.require(:user).permit(:photo)
  end

end
