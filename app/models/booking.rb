class Booking < ApplicationRecord

  belongs_to :user
  belongs_to :room

  validates :user_id, :room_id, :check_in, :check_out, :status, presence: true
  validate :no_overlapping_bookings

  enum status: { pending: 0, confirmed: 1, cancelled: 2 }

  private

  def no_overlapping_bookings
    existing_bookings = Booking.where(room_id: room_id)
                                .where.not(id: id)
                                .where('check_in < ? AND check_out > ?', check_out, check_in)
    errors.add(:base, 'Room is already booked for the given date range') if existing_bookings.exists?
  end
end
