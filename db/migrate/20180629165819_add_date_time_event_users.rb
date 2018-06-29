class AddDateTimeEventUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_users, :datetime, :datetime
  end
end
