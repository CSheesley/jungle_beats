require_relative 'spec_helper'

RSpec.describe LinkedList, type: :class do

  xit 'it adds a single node' do

    list = LinkedList.new
    expect(list.head).to eq(nil)

    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
  end

  it 'it adds a second node' do

    list = LinkedList.new

    list.append("doop")
    expect(list.head.next_node).to eq(nil)

    list.append("deep")

    expect(list.head.next_node).not_to eq(nil)
    expect(list.head.next_node.data).to eq("deep")
    expect(list.head.next_node.next_node).to eq(nil)

    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

end
