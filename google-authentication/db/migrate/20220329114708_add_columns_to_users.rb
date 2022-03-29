class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    def change
      add_column :users, google_token, :string
      add_column :users, google_refresh_token, :string
   end
  end
end
