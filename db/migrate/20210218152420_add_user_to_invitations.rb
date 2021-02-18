class AddUserToInvitations < ActiveRecord::Migration[6.1]
  def change
    add_column :invitations, :attendee_id, :integer
    add_index :invitations, :attendee_id
  end
end
