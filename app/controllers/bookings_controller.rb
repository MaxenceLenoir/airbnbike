class BookingsController < ApplicationController

    def create
        @booking = Booking.new
        
    end

end


def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    
    @ingredient = Ingredient.find(@dose.ingredient_id)

    @dose.cocktail =  @cocktail
    @dose.ingredient = @ingredient

    if @dose.save
        redirect_to cocktail_path(@cocktail)
    else
        render "cocktails/show"
    end
end



private

    def dose_params
        params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
    end
    


    <%= simple_form_for [ @cocktail, @dose ] do |f| %>
        <%= f.input :description %>
        <%= f.association :ingredient %>
        <%= f.submit "Add ", class: "btn btn-primary" %>
      <% end %>