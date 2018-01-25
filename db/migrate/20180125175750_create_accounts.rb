class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :location
      t.string :telephone
      t.string :your_bio
      t.string :avatar_img
      t.integer :user_id
    end
    
  end
end
