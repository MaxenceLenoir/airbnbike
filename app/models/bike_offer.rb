class BikeOffer < ApplicationRecord
    validates :size, :title, :address, presence: true
    validates :genre, presence: true, inclusion: { in: ["City Bike", "Electric Bike", "Mountain Bike", "Road Bike",  "Tandem Bike", "Cargo Bike"]}
    validates :price_per_day, inclusion: {in: 0..999}
    belongs_to :user

    has_many_attached :photos
    has_many   :bookings
    has_many   :reviews, dependent: :destroy

    has_many :bookings, dependent: :delete_all
    has_many_attached :photos
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?

    
    include PgSearch::Model
    pg_search_scope :search_by_title_and_genre_and_address,
      against: [ :title, :genre, :address ],
      using: {
        tsearch: { prefix: true }
      }

      def average
        (self.reviews.pluck(:rating).sum/self.reviews.size).round if self.reviews.any?
      end


end
