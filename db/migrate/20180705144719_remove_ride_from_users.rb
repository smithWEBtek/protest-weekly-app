class RemoveRideFromUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :ride
  end
end
