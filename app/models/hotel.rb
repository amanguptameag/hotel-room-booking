class Hotel < ApplicationRecord

  has_many :rooms
  validates :name, :location, :status, presence: true

  enum status: { active: 0, inactive: 1 }
end
