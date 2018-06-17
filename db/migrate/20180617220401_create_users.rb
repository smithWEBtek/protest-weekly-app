class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :password_digest
    	t.string :cell_phone
    	t.string :email
    	t.boolean :ride
    	t.boolean :drive

      t.timestamps
    end
  end
end
