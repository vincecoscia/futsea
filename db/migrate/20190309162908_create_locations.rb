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
      t.integer :mon_open
      t.integer :mon_close
      t.integer :tue_open
      t.integer :tue_close
      t.integer :wed_open
      t.integer :wed_close
      t.integer :thu_open
      t.integer :thu_close
      t.integer :fri_open
      t.integer :fri_close
      t.integer :sat_open
      t.integer :sat_close
      t.integer :sun_open
      t.integer :sun_close

      t.timestamps
    end
  end
end

