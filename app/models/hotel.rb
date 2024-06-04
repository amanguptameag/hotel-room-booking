class Hotel < ApplicationRecord

  has_many :rooms

  enum :status, [:in_active, :active]

end
