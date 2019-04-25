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

  it 'can find, pop, and includes?' do

    list = LinkedList.new

    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")

    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")

    expect(list.includes?("deep")).to eq(true)
    expect(list.includes?("dep")).to eq(false)

    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")

    expect(list.to_string).to eq("deep woo shi")
  end

end
