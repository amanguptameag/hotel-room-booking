class Room < ApplicationRecord
  
  belongs_to :hotel

  enum :status, [:in_active, :active]

end
