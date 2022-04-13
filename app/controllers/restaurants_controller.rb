class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant.find(restaurant_params)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant.find(restaurant_params)
    @restaurant.save
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
