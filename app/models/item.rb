class Item < ApplicationRecord
  validates :item_name, :description, :daily_price, :weekly_price, :images, :category_id,  presence: true

  searchkick word_start: [:item_name]
  
  belongs_to :user
  belongs_to :category
  mount_uploaders :images, ImageUploader

#   def validate_minimum_image_size
#   image = MiniMagick::Image.open(photo.path)
#   unless image[:width] > 400 && image[:height] > 400
#   errors.add :images, alert: "should be 400x400px minimum!" 
#   end

# end
end
