class Booking < ApplicationRecord
  belongs_to :offering
  belongs_to :user
end
