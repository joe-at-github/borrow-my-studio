class RemoveHirePriceFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :hire_price, :integer
  end
end
