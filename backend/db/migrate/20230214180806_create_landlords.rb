class CreateLandlords < ActiveRecord::Migration[6.1]
  def change
    create_table :landlords do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
