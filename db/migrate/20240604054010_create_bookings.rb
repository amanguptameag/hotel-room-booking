class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :room_id
      t.date :check_in
      t.date :check_out
      t.integer :payment_status
      t.integer :booking_status

      t.timestamps
    end
  end
end
