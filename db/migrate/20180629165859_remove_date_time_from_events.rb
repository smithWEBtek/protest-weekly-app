class RemoveDateTimeFromEvents < ActiveRecord::Migration[5.2]
  def change
  	remove_column :events, :datetime
  end
end
