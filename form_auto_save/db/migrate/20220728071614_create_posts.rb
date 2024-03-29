class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :state, default: "Draft"

      t.timestamps
    end
  end
end
