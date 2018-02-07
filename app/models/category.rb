class Category < ApplicationRecord
  searchkick word_start: [:name]
  has_many :items
end
