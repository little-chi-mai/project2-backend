class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if @restaurants
      render json: {
        restaurants: @restaurants
      }
    else
      render json:{
        status: 500,
        error: ['no users found']
      }
    end
  end

  def new
  end

  def edit
  end

  def show
    @restaurants = Restaurant.find(params[:id])
    if @restaurants
      render json: {
        restaurants: @restaurants
      }
    else
      render json:{
        status: 500,
        error: ['no users found']
      }
    end
  end
end
