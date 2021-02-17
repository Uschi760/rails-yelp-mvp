# frozen_string_literal: true

# rubocop:enable
class RestaurantsController < ApplicationController
  #before_action :set_restaurant, only: `%i show edit update review`

  # GET "restaurants"
  def index
    @restaurants = Restaurant.all
  end

  # GET "restaurants/new"
  def new
    #raise
    # @restaurant = Restaurant.new
  end

  # GET "restaurants/38"
  def show; end

  # POST "restaurants"
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Your Restaurant was just created.'
    else
      render :new
    end
  end

  # GET "restaurants/38/reviews/new"
  def review
    @review = Review.new.create(@restaurant)
  end

  # POST "restaurants/38/reviews"
  def restaurant_review
    @review = @restaurant.review
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :rating)
  end
end
