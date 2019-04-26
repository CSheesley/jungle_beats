require_relative 'spec_helper'

RSpec.describe JungleBeat, type: :class do

  it 'is created with an empty list' do

    jb = JungleBeat.new

    expect(jb.list.class).to eq(LinkedList)
    expect(jb.list.head).to eq(nil)
  end

  it 'can append multiple pieces of data to its list' do

    jb = JungleBeat.new

    jb.append("deep doo ditt")

    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")

    jb.append("woo hoo shu")

    expect(jb.count).to eq(6)
  end
end
