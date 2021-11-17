class Material < ApplicationRecord
  belongs_to :recipe
  
  # バリデーション（材料を空の入力を防ぐ）
  validates :ingredient, presence: true
end
