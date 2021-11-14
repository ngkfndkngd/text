class Review < ApplicationRecord
  attachment :review_image
  belongs_to :user
  belongs_to :recipe
end
