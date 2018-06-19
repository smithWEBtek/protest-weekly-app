class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.belongs_to :user, index: true
      t.belongs_to :organization, index: true
      t.belongs_to :venue, index: true


      t.timestamps
    end
  end
end
