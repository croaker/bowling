class Bowling
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    frame_index = 0

    10.times { |frame|
      if spare?(frame_index)
        score += 10 + @rolls[frame_index + 2]
        frame_index += 2
      elsif @rolls[frame_index] == 10
        score += 10 +
                 @rolls[frame_index + 1] +
                 @rolls[frame_index + 2]
        frame_index += 1
      else
        score += score_pins_in_frame(frame_index)
        frame_index += 2
      end
    }

    score
  end

  def score_pins_in_frame(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1]
  end

  def spare?(frame_index)
    score_pins_in_frame(frame_index) == 10
  end
end
