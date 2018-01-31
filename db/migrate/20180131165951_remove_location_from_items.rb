class RemoveLocationFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :location, :string
  end
end
