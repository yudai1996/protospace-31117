class Prototype < ApplicationRecord
  belongs_to :users, optional: true
  has_many  :comments
  has_one_attached :image

  #バリデーションの設定
  validates :image,      presence: true
  validates :title,      presence: true
  validates :catch_copy, presence: true
  validates :concept,    presence: true

end
