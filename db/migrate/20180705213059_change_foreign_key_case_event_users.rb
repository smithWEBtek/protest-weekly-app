class ChangeForeignKeyCaseEventUsers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :event_users, :users_id, :user_id
  	rename_column :event_users, :events_id, :event_id
  end
end
