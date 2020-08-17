class ChangeBikeOffers < ActiveRecord::Migration[6.0]
  def change
    remove_column :bike_offers, :user, :string
    add_reference :bike_offers, :user, foreign_key: true
  end
end
