class AddFieldsToAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :name, :string
    add_column :accounts, :email, :string
    add_column :accounts, :location, :string
    add_column :accounts, :telephone, :integer
    add_column :accounts, :your_bio, :string
    add_column :accounts, :avatar_img, :string
    add_column :accounts, :user_id, :integer
  end
end
