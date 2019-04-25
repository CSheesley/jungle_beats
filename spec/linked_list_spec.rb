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

  it 'it can add a second node' do

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

  it 'it can add a third node' do

    list = LinkedList.new

    list.append("doop")
    list.append("deep")
    list.append("beep")

    expect(list.count).to eq(3)
    expect(list.to_string).to eq("doop deep beep")
  end

  it 'it can prepend and insert nodes' do

    list = LinkedList.new

    list.append("plop")
    expect(list.to_string).to eq("plop")

    list.append("suu")
    list.prepend("dop")

    expect(list.count).to eq(3)
    expect(list.to_string).to eq("dop plop suu")

    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end

end
