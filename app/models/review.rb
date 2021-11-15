class Review < ApplicationRecord
  attachment :review_image
  belongs_to :user
  belongs_to :recipe
  
  # バリデーション（カラの入力を無効に）
# 　validates :review, presence: true
end
