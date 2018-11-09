class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :password_digest
    	t.string :cell_phone
    	t.string :email
    	t.string :uid
      t.string :image
      
      t.timestamps
    end
  end
end
