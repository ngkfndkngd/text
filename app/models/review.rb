class Review < ApplicationRecord
  attachment :review_image
  belongs_to :user
  belongs_to :recipe
  
  # バリデーション（コメントが空の入力を防ぐ）
  validates :comment, presence: true
end
