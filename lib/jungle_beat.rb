class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data_set)
    split_data = data_set.split
    split_data.each { |data| @list.append(data)}
  end

  def count
    self.list.count
  end

end
