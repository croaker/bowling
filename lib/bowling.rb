class Bowling
  attr_reader :rolls

  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    roll_index = 0

    (1..10).reduce(0) do |score, frame|
      if strike?(roll_index)
        score = score + 10 + strike_bonus(roll_index)
        roll_index += 1
      elsif spare?(roll_index)
        score = score + 10 + spare_bonus(roll_index)
        roll_index += 2
      else
        score = score + sum_rolls_in_frame(roll_index)
        roll_index += 2
      end

      score
    end
  end

  def sum_rolls_in_frame(roll_index)
    roll_at(roll_index) +
      roll_at(roll_index + 1)
  end

  def spare_bonus(roll_index)
    roll_at(roll_index + 2)
  end

  def strike_bonus(roll_index)
    roll_at(roll_index + 1) +
      roll_at(roll_index + 2)
  end

  def spare?(roll_index)
    sum_rolls_in_frame(roll_index) == 10
  end

  def strike?(roll_index)
    roll_at(roll_index) == 10
  end

  def roll_at(index)
    rolls[index] || 0
  end
end
