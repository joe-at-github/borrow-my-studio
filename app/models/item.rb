class Item < ApplicationRecord
  searchkick word_start: [:item_name, :category]
  
  belongs_to :user
  mount_uploaders :images, ImageUploader
end
