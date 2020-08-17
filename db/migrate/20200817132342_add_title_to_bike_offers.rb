class AddTitleToBikeOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :bike_offers, :title, :string
  end
end
