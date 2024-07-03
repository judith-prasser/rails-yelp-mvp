class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def show
    @reviews = Review.where(params[:restaurant_id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
end
