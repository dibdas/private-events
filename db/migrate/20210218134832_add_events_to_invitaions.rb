class AddEventsToInvitaions < ActiveRecord::Migration[6.1]
  def change
    add_column :invitaions, :invitatione_event_id, :integer
  end
end
