class BikeOffersController < ApplicationController
    def new
        @bike_offer = BikeOffer.new
    end
end
