class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :url
      t.string :phone
      t.string :neighborhood
      t.text :description
      t.string :lon
      t.string :lat
      t.integer :price
      t.integer :open
      t.integer :close
      t.string :img
      t.string :img2
      t.string :img3

      t.timestamps
    end
  end
end

