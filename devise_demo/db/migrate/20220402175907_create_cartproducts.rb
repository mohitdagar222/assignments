class CreateCartproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :cartproducts do |t|
      t.references :cart, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
