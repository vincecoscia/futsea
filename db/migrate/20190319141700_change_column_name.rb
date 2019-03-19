class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :event_status, :event_full
  end
end
