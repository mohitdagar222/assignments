class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.text :contact
      t.string :stripe_customer_id

      t.timestamps
    end
  end
end
