class AddImagesToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :images, :json
  end
end
