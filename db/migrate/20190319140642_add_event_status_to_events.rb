class AddEventStatusToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_full, :boolean, :default => false
  end
end
