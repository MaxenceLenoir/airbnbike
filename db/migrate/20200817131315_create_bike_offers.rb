class CreateBikeOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :bike_offers do |t|
      t.string :size
      t.integer :price_per_day
      t.string :genre
      t.string :user

      t.timestamps
    end
  end
end
