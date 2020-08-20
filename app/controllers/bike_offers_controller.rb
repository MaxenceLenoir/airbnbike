class BikeOffersController < ApplicationController
    require 'date'

    before_action :set_bike_offer, only: [:show, :update, :edit, :destroy]

    def index
        if params[:query].present?
            @bike_offers = policy_scope(BikeOffer.search_by_title_and_genre(params[:query]))
        else
            @bike_offers = policy_scope(BikeOffer).order(created_at: :desc)
        end


        @bike_offers_with_coodinates = BikeOffer.geocoded
        @markers = @bike_offers_with_coodinates.map do |bike_offer|
            {
              lat: bike_offer.latitude,
              lng: bike_offer.longitude,
              infoWindow: render_to_string(partial: "info_window", locals: { bike_offer: bike_offer }),
            }
          end

    end

    def new
        @bike_offer = BikeOffer.new
        authorize @bike_offer
    end

    def create
        @bike_offer = BikeOffer.new(bike_offer_params)
        @bike_offer.user = current_user

        if @bike_offer.save
            redirect_to @bike_offer
        else
            render :new
        end
        authorize @bike_offer

    end

    def show
        @booking = Booking.new
        authorize @bike_offer
    end

    def all_my_bikes
        @all_my_user_bikes = BikeOffer.where("user_id = ?", current_user.id)
        authorize :bike_offer, :all_my_bikes?
    end

    def edit
        authorize @bike_offer
    end

    def update
        @bike_offer.update!(bike_offer_params)
        render :show
        authorize @bike_offer
    end

    def destroy
        if can_i_destroy?(@bike_offer)
            @bike_offer.destroy
            redirect_to bike_offers_path
        else
            redirect_to bike_offer_path(@bike_offer)
        end
        authorize @bike_offer
    end

    private

    def can_i_destroy?(bike_offer)
        bike_offer.bookings.each do |booking|
            if booking.accepted.nil? || (booking.end_date > Date.today && booking.accepted)
                return false
            end
        end
        true
    end

    def bike_offer_params
        params.require(:bike_offer).permit(:title, :price_per_day, :size, :genre, :user_id, photos: [])
    end

    def set_bike_offer
        @bike_offer = BikeOffer.find(params[:id])
    end

end

