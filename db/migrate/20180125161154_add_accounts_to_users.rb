class AddAccountsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :your_bio, :string
    add_column :users, :avatar_img, :string
    add_column :users, :telephone, :string 
  end
end
