class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :phone_number
      t.string :email
      t.integer :status

      t.timestamps
    end
  end
end
