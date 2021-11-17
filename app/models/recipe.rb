class Recipe < ApplicationRecord
  # レシピ投稿画像 refile定義
  attachment :recipe_image
  # アソシエーション（親）
  belongs_to :user
  # アソシエーション（子）
  has_many :materials, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # 複数のモデルを登録・更新させる
  accepts_nested_attributes_for :materials, allow_destroy: true
  
  # バリデーション（空の入力を防ぐ）
  validates :name, presence: true
  validates :description, presence: true
  validates :recipe_image, presence: true
  
  # favorited_by?(user)は既にブックマークしているかを検証します。
  def favorited_by?(user)
    favorites.where(user_id: user).exists?
  end
end
