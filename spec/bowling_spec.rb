require_relative "../lib/bowling"

RSpec.describe Bowling do
  let(:game) { Bowling.new }

  def roll_many(count, pins)
    count.times { game.roll(pins) }
  end

  def roll_spare
    game.roll(5)
    game.roll(5)
  end

  def roll_strike
    game.roll(10)
  end

  it "can score a gutter game" do
    roll_many(20, 0)

    expect(game.score).to eq 0
  end

  it "correctly scores an all 1s game" do
    roll_many(20, 1)

    expect(game.score).to eq 20
  end

  it "can score one spare" do
    roll_spare
    game.roll(3)
    roll_many(17, 0)

    expect(game.score).to eq 16
  end

  it "can score one strike" do
    roll_strike
    game.roll(3)
    game.roll(4)
    roll_many(16, 0)

    expect(game.score).to eq 24
  end
end
