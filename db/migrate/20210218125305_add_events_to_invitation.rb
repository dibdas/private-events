class AddEventsToInvitation < ActiveRecord::Migration[6.1]
  def change
    add_column :invitations, :attendee_event_id, :integer
  end
end
