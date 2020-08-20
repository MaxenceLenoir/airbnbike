class BikeOffer < ApplicationRecord
    validates :size, :price_per_day, :title, presence: true
    validates :genre, presence: true, inclusion: { in: ["City Bike", "Electric Bike", "Mountain Bike", "Road Bike",  "Tandem Bike", "Cargo Bike"]}
    belongs_to :user
    has_many :bookings, dependent: :delete_all
    has_many_attached :photos
end
