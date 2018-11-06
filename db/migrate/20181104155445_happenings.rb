class Happenings < ActiveRecord::Migration[5.2]
  def change
  	create_table :happenings do |t|
      t.references :event, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true 
      t.boolean :attend, default: false
      t.boolean :need_ride, default: false
      t.boolean :can_drive, default: false

      t.timestamps
    end
  end
end
