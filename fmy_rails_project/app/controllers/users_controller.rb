class UsersController < ApplicationController

  def index
    render json: params
  end
end