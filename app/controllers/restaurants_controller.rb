class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all.order("created_at DESC")
    puts "CURRENT_USER" 
    puts @current_user
    render json:@restaurants
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

  def destroy
    restaurant = Restaurant.find params[:id]
    restaurant.destroy

  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :image, :price_level, :rating, :website, :contact, :latitude, :longitude, :user_id, :place_id)
  end
end
