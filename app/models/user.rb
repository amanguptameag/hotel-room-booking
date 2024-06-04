class User < ApplicationRecord

  has_many :bookings

  enum :status, [:in_active, :active]

end
