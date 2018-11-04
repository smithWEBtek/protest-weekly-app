class Events < ActiveRecord::Migration[5.2]
  def change
  	create_table :events do |t|
      t.string :name
      t.string :cause
      t.integer :organization_id
      t.datetime :date
      t.string :location
      t.datetime :datetime
     
      t.timestamps
    end
  end
end
