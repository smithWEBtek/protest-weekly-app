class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :street_address
      t.string :city_state


      t.timestamps
    end
  end
end
