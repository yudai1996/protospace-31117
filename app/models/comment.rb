class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  #バリデーションの設定
  validates :comment,      presence: true
end
