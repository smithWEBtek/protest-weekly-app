class AddNeedRideEventUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_users, :need_ride, :boolean
  end
end
