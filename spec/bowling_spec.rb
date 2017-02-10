require_relative "../lib/bowling"

RSpec.describe Bowling do
  it "can score a gutter game" do
    bowling = Bowling.new
    10.times { bowling.roll(0) }
  end
end
