class RemoveLocationFromEventsUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :event_users, :location
  end

end
