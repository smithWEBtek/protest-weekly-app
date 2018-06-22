class ChangeDateToDateTime < ActiveRecord::Migration[5.2]
  def change
  	rename_column :events, :date, :datetime
  end
end
