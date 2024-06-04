class Room < ApplicationRecord

  belongs_to :hotel
  has_many :bookings

  validates :room_number, :room_type, :price, :status, presence: true

  enum status: { active: 0, inactive: 1 }

end
