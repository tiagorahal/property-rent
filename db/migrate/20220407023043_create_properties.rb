class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :rooms
      t.integer :bathrooms
      t.integer :price

      t.timestamps
    end
  end
end
