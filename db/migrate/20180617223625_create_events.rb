class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :contact_info
      t.integer :venue_id
      belongs_to :organizations

      t.timestamps
    end
  end
end
