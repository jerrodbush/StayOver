class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username 
      t.string :password 
      t.string :first_name 
      t.string :last_name 
      t.string :email 
      t.integer :phone_number 
    end
    
  end
end
