class CreateItems < ActiveRecord::Migration[5.1]
  def change
    # drop_table :items
    create_table :items do |t|
      t.string :item_name
      t.integer :hire_price
      t.string :category
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
