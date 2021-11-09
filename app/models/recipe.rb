class Recipe < ApplicationRecord
  
  attachment :recipe_image
  belongs_to :user
  has_many :materials, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
