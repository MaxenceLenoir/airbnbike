class BookingsController < ApplicationController

    def create
        @booking = Booking.new(booking_params)
        @bike_offer = BikeOffer.find(params[:bike_offer_id])
        
        @booking.bike_offer =  @bike_offer
        @booking.user = current_user
    
        if @booking.save
            redirect_to bike_offers_path
        else
            render bike_offer(@bike_offer)
        end
        authorize @booking
    end

    def booking_accepted
        @booking.accepted = true
        @booking.save
    end

    private 

    def booking_params
        params.require(:booking).permit(:start_date, :end_date, :bike_offer_id)
    end

end