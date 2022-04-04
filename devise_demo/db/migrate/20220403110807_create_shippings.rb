class CreateShippings < ActiveRecord::Migration[7.0]
  def change
    create_table :shippings do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :country
      t.string :state
      t.string :zip 
      

      t.timestamps
    end
  end
end
