class RenameRsvPinEventUsersAsAttend < ActiveRecord::Migration[5.2]
  def change
  	rename_column :event_users, :RSVP, :attend
  end
end
