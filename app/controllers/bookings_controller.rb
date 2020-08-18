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

    def accepted
        @booking = Booking.find(params[:id])
        @booking.update(accepted: true)
        redirect_to all_my_bikes_path
        authorize @booking
    end

    def declined
        @booking = Booking.find(params[:id])
        @booking.update(accepted: false)
        redirect_to all_my_bikes_path
        authorize @booking
    end

    def update
        @booking.update(booking_params)
        render :all_my_bikes
        authorize @booking
    end

    private 

    def booking_params
        params.require(:booking).permit(:start_date, :end_date, :bike_offer_id, :accepted)
    end

end