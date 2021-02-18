class AddUserToInvitaions < ActiveRecord::Migration[6.1]
  def change
    add_column :invitaions, :attendee_id, :integer
  end
end
