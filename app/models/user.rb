class User < ApplicationRecord

  has_many :bookings
  validates :name, :username, :password, :phone_number, :email, :status, presence: true
  validates :email, uniqueness: true

  enum status: { active: 0, inactive: 1 }
end
