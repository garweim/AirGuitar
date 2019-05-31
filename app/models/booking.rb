class Booking < ApplicationRecord
  belongs_to :offering
  belongs_to :user
  validates :starting_date, :end_date, presence: true
end
