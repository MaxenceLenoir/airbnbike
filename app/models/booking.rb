class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike_offer
end
