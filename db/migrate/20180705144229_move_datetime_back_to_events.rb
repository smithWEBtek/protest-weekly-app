class MoveDatetimeBackToEvents < ActiveRecord::Migration[5.2]
  def change
  	remove_column :event_users, :datetime
  end

  def change
  	add_column :events, :datetime, :datetime
  end
  
end
