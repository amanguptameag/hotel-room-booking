class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :hotel_id
      t.string :room_number
      t.string :room_type
      t.decimal :price
      t.integer :status

      t.timestamps
    end
  end
end
