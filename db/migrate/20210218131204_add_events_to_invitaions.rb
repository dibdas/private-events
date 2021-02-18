class AddEventsToInvitaions < ActiveRecord::Migration[6.1]
  def change
    add_column :invitaions, :attendee_event_id, :integer
  end
end
