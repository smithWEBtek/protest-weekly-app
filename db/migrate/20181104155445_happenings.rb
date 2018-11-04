class Happenings < ActiveRecord::Migration[5.2]
  def change
  	create_table :happenings do |t|
      t.integer :event_id
      t.integer :user_id 
      t.boolean :attend, default: false
      t.boolean :need_ride, default: false
      t.boolean :can_drive, default: false

      t.timestamps
    end
  end
end
