class RemoveDatetimeFromEventUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :event_users, :datetime
  end
end
