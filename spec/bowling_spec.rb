require_relative "../lib/bowling"

RSpec.describe Bowling do
  let(:game) { Bowling.new }

  def roll_many(count, pins)
    count.times { game.roll(pins) }
  end

  it "can score a gutter game" do
    roll_many(20, 0)

    expect(game.score).to eq 0
  end

  it "correctly scores an all 1s game" do
    roll_many(20, 1)

    expect(game.score).to eq 20
  end
end
