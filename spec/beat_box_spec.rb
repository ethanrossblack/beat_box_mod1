require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"
require "rspec"

describe BeatBox do
  it "exists" do
    bb = BeatBox.new

    expect(bb).to be_a(BeatBox)
  end
end