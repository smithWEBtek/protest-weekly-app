class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.belongs_to :events 
      t.belongs_to :users 
      t.string :location

      t.timestamps
    end
  end
end
