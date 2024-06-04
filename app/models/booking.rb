class Booking < ApplicationRecord

  belongs_to :room
  has_one :user

  enum :status, [:confirmed, :pending, :canceled]

end
