class BikeOffer < ApplicationRecord
    validates :size, :price_per_day, :genre, :title, presence: true
end
