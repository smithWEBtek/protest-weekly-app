class RenameJoinTable < ActiveRecord::Migration[5.2]
  def change
  	rename_table :event_users, :happenings
  end
end
