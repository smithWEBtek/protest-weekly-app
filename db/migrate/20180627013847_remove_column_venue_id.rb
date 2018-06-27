class RemoveColumnVenueId < ActiveRecord::Migration[5.2]
  def change
  	remove_column :events, :venue_id
  end
end
