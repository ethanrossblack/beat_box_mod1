require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"
require "rspec"

describe BeatBox do
  it "exists" do
    bb = BeatBox.new

    expect(bb).to be_a(BeatBox)
  end

  it "creates an empty LinkedList item on initialization" do
    bb = BeatBox.new

    expect(bb.list).to be_a(LinkedList)
    expect(bb.list.head).to be nil
  end

  it "can append multiple nodes at a time" do
    bb = BeatBox.new
    bb.append("deep doo ditt")
    
    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")
  end

  it "can count the number of nodes" do
    bb = BeatBox.new
    bb.append("deep doo ditt")

    expect(bb.count).to eq(3)

    bb.append("woo hoo shu")

    expect(bb.count).to eq(6)
  end

  it "can play beats" do
    bb = BeatBox.new
    bb.append("deep doo ditt")

    expect(bb.play).to eq(`say -r 500 -v Boing deep doo ditt`)
  end
end