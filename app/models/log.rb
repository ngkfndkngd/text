class Log < ApplicationRecord
  belongs_to :user
  enum record_status: { fine: 0, low: 1, sick: 2 }

  enum colour_status: { light_brown: 0, brown: 1, black: 2, orange: 3, green: 4 }

  enum shape_status: { big: 0, small: 1, hard: 2, soft: 3, water: 4 }

  def record_status_score
    if fine?
      5
    elsif low?
      3
    else
      0
    end
  end

  def colour_status_score
    if light_brown?
      5
    elsif brown?
      4
    elsif black?
      3
    elsif orange?
      2
    else
      1
    end
  end

  def shape_status_score
    if big?
      5
    elsif small?
      4
    elsif hard?
      3
    elsif soft?
      2
    else
      1
    end
  end
end
