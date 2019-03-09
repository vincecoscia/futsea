class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.integer :game_type
      t.string :surface
      t.boolean :outdoor
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end


# Field.create(game_type: 7,surface: "turf",outdoor: true, location: )
