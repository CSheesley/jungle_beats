require_relative 'spec_helper'

RSpec.describe LinkedList, type: :class do

  it 'it adds a single node' do

    list = LinkedList.new
    expect(list.head).to eq(nil)

    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
  end

end
