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

  def create
    @restaurant = Restaurant.create restaurant_params
    render json:@restaurant
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

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :image, :price_level, :rating, :website, :contact, :latitude, :longitude)
  end
end
