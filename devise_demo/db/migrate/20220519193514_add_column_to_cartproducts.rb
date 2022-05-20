class AddColumnToCartproducts < ActiveRecord::Migration[7.0]
  def change
    add_column :cartproducts, :order_status, :string, default: "added"
  end
end
