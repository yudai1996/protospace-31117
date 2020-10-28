class Prototype < ApplicationRecord
  belong_to :users
  has_many  :comments
  has_one_attached :image

  #バリデーションの設定
  validates :image,      presence: true
  validates :title,      presence: true
  validates :catch_copy, presence: true
  validates :concept,    presence: true

end
