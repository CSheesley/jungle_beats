class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
    end
    @count += 1
  end

  def to_string
    string = []
    head_string = self.head.data.to_s
    next_node_string = self.head.next_node.data.to_s

    string << head_string unless head_string.nil?
    string << next_node_string unless next_node_string.nil?
    # string << self.head.next_node.each { |next_node| string << next_node.data }
    string.join(" ")
  end
end
