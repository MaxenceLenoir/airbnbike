class BikeOffersController < ApplicationController
    
    before_action :set_bike_offer, only: [:show, :update, :edit, :destroy]



    def index
        @bike_offers = BikeOffer.all
    end
    
    
    def new
        @bike_offer = BikeOffer.new
    end

    def create
        @bike_offer = BikeOffer.new(bike_offer_params)
        @bike_offer.user = current_user
        
        if @bike_offer.save
            redirect_to @bike_offer
        else
            render :new
        end

    end

    def show
    end

    def all_my_bikes
        @all_my_user_bikes = BikeOffer.where("user_id = ?", current_user.id)
    end

    def edit
        unless @bike_offer.id == current_user.id
          render "layouts/error"
        end
    end

    def update
        @bike_offer.update(bike_offer_params)
        render :show
    end

    def destroy
        @bike_offer.destroy
        redirect_to bike_offers_path
    end

    private

    def bike_offer_params
        params.require(:bike_offer).permit(:title, :price_per_day, :size, :genre, :user_id)
    end

    def set_bike_offer
        @bike_offer = BikeOffer.find(params[:id])
    end

end
