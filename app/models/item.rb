class Item < ApplicationRecord
  has_many :users
  mount_uploaders :images, ImageUploader
end
