class UsersController < ApplicationController

  def index
    @users = CreateUsers.all
    render json: @users
  end

  def create
    user = CreateUsers.new(params.require(:user).permit(:username))
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
    user_update = CreateUsers.update(params[:id], :username => params[:username])

    if user_update.save
      render json: user_update
    else
      render json: user_update.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user_destroy = CreateUsers.destroy(params[:id])
    render json: user_destroy
  end

end