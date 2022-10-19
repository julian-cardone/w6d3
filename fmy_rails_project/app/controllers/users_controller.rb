class UsersController < ApplicationController

  def index
    @users = CreateUsers.all
    render json: @users
  end

  def create
    user = CreateUsers.new(params.require(:user).permit(:name, :email))
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
    user_update = CreateUsers.update(params[:id], :name => params[:name], :email => params[:email])
    render json: user_update
  end

  def destroy
    user_destroy = CreateUsers.destroy(params[:id])
    render json: user_destroy
  end

end