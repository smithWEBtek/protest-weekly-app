class AddRideDriveEventUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_users, :need_ride, :boolean
  end

  def change
  	add_column :event_users, :can_drive, :boolean
  end
  
end
