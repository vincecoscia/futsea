class RemoveFieldsFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :event_end, :boolean
    remove_column :events, :event_start, :boolean
    remove_column :events, :date, :date
    remove_column :events, :time, :time
  end
end
