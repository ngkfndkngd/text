class Log < ApplicationRecord
  belongs_to :user
  enum record_status: { fine: 0, low: 1, sick: 2 }

  # バリデーション（空の入力を防ぐ）
  validates :record_status, presence: true
end
