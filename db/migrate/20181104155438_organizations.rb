class Organizations < ActiveRecord::Migration[5.2]
  def change
  	 create_table :organizations do |t|
      t.string :name
      t.string :contact_info
      
      t.timestamps
    end
  end
end
