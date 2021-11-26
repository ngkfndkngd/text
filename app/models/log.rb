class Log < ApplicationRecord
  belongs_to :user
  enum record_status: { fine: 0, low: 1, sick: 2 }

  
end
