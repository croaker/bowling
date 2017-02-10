class Bowling
  attr_reader :rolls

  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    roll_index = 0

    @rolls.each_slice(2) do |frame|
      if spare?(frame)
        score += 10 + @rolls[roll_index + 2]
      else
        score += frame[0] + frame[1]
      end

      roll_index += 2
    end

    score
  end

  def spare?(frame)
    frame[0] + frame[1] == 10
  end
end
