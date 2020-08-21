class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @bike_offer = BikeOffer.find(params[:bike_offer_id])
    @review.bike_offer = @bike_offer
    @review.save
    redirect_to bike_offer_path(@bike_offer)
    authorize @review
  end

  

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
