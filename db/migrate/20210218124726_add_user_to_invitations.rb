class AddUserToInvitations < ActiveRecord::Migration[6.1]
  def change
    add_column :invitations, :attendee_id, :integer
  end
end
