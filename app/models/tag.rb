class Tag < ApplicationRecord
  #多対多のアソシエーション
  has_many :recipe_tags, dependent: :destroy
  has_many :recipes, through: :recipe_tags
  #中間テーブルであるrecipe_tagモデルを介してのrecipeモデルとの関連付けを記述。

  attachment :tag_image
end
