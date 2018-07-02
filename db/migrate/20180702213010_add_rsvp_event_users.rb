class AddRsvpEventUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_users, :RSVP, :boolean
  end
end
