class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike_offer
  has_one :order, dependent: :destroy

  def compute_price
    total = (self.end_date - self.start_date) + 1
    (self.bike_offer.price_cents * total).to_i
  end

  def compute_price_cents
    compute_price / 100
  end

end
