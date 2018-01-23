class Account < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar_img, ImageUploader
end
