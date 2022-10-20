class UsersController < ApplicationController

  def index
    @users = CreateUsers.all
    render json: @users
  end

  def create
    user = CreateUsers.new(user_params)
    if user.save
        render json: user
    else
        render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = CreateUsers.find(params[:id])
    render json: user
  end

  def update
    user = CreateUsers.find(params[:id])

    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user_destroy = CreateUsers.destroy(params[:id])
    render json: user_destroy
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end

end