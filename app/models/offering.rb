class Offering < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_genre_and_name,
    against: [:genre, :name, :description],
    using: {
      tsearch: { prefix: true }
    }
  #   include PgSearch
  # pg_search_scope :global_search,
  #   against: [ :genre, :name ],
  #   associated_against: {
  #   user: [ :first_name, :last_name ]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  mount_uploader :picture, PhotoUploader
end
