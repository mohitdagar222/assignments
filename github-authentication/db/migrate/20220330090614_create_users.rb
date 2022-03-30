class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.string :email
      t.string :token
      t.string :image_url
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
