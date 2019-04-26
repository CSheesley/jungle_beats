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

  it 'can play a beat' do

    jb = JungleBeat.new

    jb.append("deep doo ditt woo hoo shu")

    expect(jb.count).to eq(6)

    jb.play(250) #should audibly play the beat data of the list
  end

  it 'is looking forward to Mod 3' do

    jb = JungleBeat.new

    phrase = "Neat project. Looking forward to a great Mod 3!"

    jb.append(phrase)

    jb.play(200)
  end
  
end
