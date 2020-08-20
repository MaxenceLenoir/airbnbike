class AddAddressToBikeOffer < ActiveRecord::Migration[6.0]
  def change
    add_column :bike_offers, :address, :string
  end
end
