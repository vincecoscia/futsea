class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.integer :price
      t.boolean :event_end
      t.boolean :event_start
      t.boolean :event_full, :default => false
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
