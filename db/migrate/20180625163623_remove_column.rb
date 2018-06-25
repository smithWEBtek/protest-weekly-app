class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :admin
  end

  def change
  	remove_column :events, :user_id
  end
end
