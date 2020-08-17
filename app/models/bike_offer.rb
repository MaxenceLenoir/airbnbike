class BikeOffer < ApplicationRecord
    validates :size, :price_per_day, :genre, :title, presence: true
    belongs_to :user
end
