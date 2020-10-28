class Prototype < ApplicationRecord
  belong_to :users
  has_many  :comments
  has_one_attached :image
end
