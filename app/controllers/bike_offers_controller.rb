class BikeOffersController < ApplicationController
    
    def index
        @bike_offers = BikeOffer.all
    end
    
    
    def new
        @bike_offer = BikeOffer.new
    end

    def create
        @bike_offer = BikeOffer.new(bike_offer_params)

        if @bike_offer.save
            redirect_to bike_offers_path
        else
            render :new
        end

    end



    private

    def bike_offer_params
        params.require(:bike_offer).permit(:title, :price_per_day, :size, :genre, :user)
    end

end

