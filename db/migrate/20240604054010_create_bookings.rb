class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.references :room, null: false, foreign_key: true
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end
