require_relative "../lib/bowling"

RSpec.describe Bowling do
  it "can score a gutter game" do
    game = Bowling.new
    20.times { game.roll(0) }

    expect(game.score).to eq 0
  end
end
