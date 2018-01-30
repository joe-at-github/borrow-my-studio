class RemoveOwnerFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :owner, :string
  end
end
