class RemoveColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :name, :string
    remove_column :users, :location, :string
    remove_column :users, :your_bio, :string
    remove_column :users, :avatar_img, :string
    remove_column :users, :telephone, :string
  end
end
