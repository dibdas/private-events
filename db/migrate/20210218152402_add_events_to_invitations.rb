class AddEventsToInvitations < ActiveRecord::Migration[6.1]
  def change
    add_column :invitations, :attendee_event_id, :integer
    add_index :invitations, :attendee_event_id
  end
end
