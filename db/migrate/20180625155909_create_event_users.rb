class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.integer :event_id
      t.integer :user_id 
      t.string :location

      t.timestamps
    end
  end
end
