class BikeOffer < ApplicationRecord
    monetize :price_cents
    validates :size, :title, :address, presence: true
    validates :genre, presence: true, inclusion: { in: ["City Bike", "Electric Bike", "Mountain Bike", "Road Bike",  "Tandem Bike", "Cargo Bike"]}
    validates :price_cents, inclusion: {in: 0..999999}
    belongs_to :user
    has_many :bookings, dependent: :delete_all
    has_many_attached :photos
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
    
    include PgSearch::Model
    pg_search_scope :search_by_title_and_genre,
      against: [ :title, :genre ],
      using: {
        tsearch: { prefix: true }
      }
end
