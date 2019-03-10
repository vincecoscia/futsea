class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.integer :game_type
      t.string :surface
      t.boolean :outdoor
      t.references :location, foreign_key: true

      t.timestamp
    end
  end
end
