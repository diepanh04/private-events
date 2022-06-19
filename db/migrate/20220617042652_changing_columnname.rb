class ChangingColumnname < ActiveRecord::Migration[7.0]
  def change
    rename_column :attendances, :attendee_id, :event_attender_id
    rename_column :attendances, :attended_event_id, :attendee_id
  end
end
