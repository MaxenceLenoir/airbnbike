class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike_offer
  has_many :reviews, dependent: :destroy
end
