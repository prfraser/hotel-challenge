class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :description
      t.integer :price_per_night

      t.timestamps
    end
  end
end
