class Prototype < ApplicationRecord
  belong_to :users
  has_many  :comments
end
