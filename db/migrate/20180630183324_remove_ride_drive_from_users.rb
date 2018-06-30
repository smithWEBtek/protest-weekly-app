class RemoveRideDriveFromUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :ride
  end

  def change
  	remove_column :users, :drive 
  end
  
end
