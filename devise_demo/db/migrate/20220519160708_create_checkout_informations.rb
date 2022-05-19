class CreateCheckoutInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :checkout_informations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :address_2
      t.string :country
      t.string :state
      t.integer :pin_code
      t.references :cart, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
