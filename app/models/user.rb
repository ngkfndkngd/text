class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image
  has_many :logs, dependent: :destroy
  has_many :recipes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # バリデーション（名前：空を防ぐ、一意性があること、最低2文字、最高20字）
  validates :name, presence: true, uniqueness: true,
                   length: { minimum: 2, maximum: 20 }
  # （自己紹介：最高50字まで）
  validates :introduction, length: { maximum: 50 }
end
