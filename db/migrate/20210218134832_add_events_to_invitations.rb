class AddEventsToInvitations < ActiveRecord::Migration[6.1]
  def change
    add_column :invitations, :invitations_event_id, :integer
  end
end
