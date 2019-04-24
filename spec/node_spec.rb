require_relative 'spec_helper'

RSpec.describe Node, type: :class do

  describe 'Instance Methods' do
    it '.data' do
      node = Node.new("plop")

      expect(node.data).to eq("plop")
      expect(node.next_node).to eq(nil)
    end
  end
end
