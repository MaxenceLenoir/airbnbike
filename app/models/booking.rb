class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike_offer
  has_one :order

  def compute_price
    total = (self.end_date - self.start_date) + 1
    (self.bike_offer.price * total).to_i
  end

end
