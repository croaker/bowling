require_relative "../lib/bowling"

RSpec.describe Bowling do
  let(:game) { Bowling.new }

  def roll_many(count:, pins:)
    count.times { game.roll(pins) }
  end

  def roll_spare
    game.roll(5)
    game.roll(5)
  end

  it "can score a gutter game" do
    roll_many(count: 20, pins: 0)

    expect(game.score).to eq 0
  end

  it "can score an all 1s game" do
    roll_many(count: 20, pins: 1)

    expect(game.score).to eq 20
  end

  it "can score one spare" do
    roll_spare
    game.roll(3)
    roll_many(count: 17, pins: 0)

    expect(game.score).to eq 16
  end

  it "can score a strike" do
    game.roll(10) # strike
    game.roll(3)
    game.roll(3)
    roll_many(count: 17, pins: 0)

    expect(game.score).to eq 22
  end

  it "can score a perfect game" do
    roll_many(count: 12, pins: 10)

    expect(game.score).to eq 300
  end

  it "can score a nearly perfect game" do
    roll_many(count: 9, pins: 10)
    roll_spare
    game.roll(0)

    expect(game.score).to eq 265

  end
end
