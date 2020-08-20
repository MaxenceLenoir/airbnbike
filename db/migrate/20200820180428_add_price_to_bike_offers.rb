class AddPriceToBikeOffers < ActiveRecord::Migration[6.0]
  def change
    add_monetize :bike_offers, :price, currency: { present: false }
    remove_column :bike_offers, :price_per_day
  end
end
