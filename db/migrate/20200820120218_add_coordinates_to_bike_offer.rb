class AddCoordinatesToBikeOffer < ActiveRecord::Migration[6.0]
  def change
    add_column :bike_offers, :latitude, :float
    add_column :bike_offers, :longitude, :float
  end
end
