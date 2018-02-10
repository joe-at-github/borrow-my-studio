class Account < ApplicationRecord
  validates :name, :location,  presence: true
  
  belongs_to :user
  mount_uploader :avatar_img, ImageUploader
end
