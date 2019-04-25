


# def find_at_index(index)
#   last_spot = @head.next_node
#   count = 0
#   until last_spot.next_node.nil? || count == index
#     last_spot = last_spot.next_node
#     count += 1
#   end
#   last_spot
# end
# 0   1   2
# doo wop bam
# bop
#
# def insert(index, new_node)
#   existing_node_at_idnex = find_at_index(index)
#   node_pointing_at_existing = find_at_index(index-1)
#   node_pointing_at_existing.next_node = new_node
#   new_node.next_node = existing_node_at_idnex
# end

def to_string
  string = ""
  head = self.head
  next_node = self.head.next_node

  string << ("#{head.data.to_s} ") unless head.nil?
  string << ("#{next_node.data.to_s} ") unless next_node.nil?
  # string << self.head.next_node.each { |next_node| string << next_node.data }
  string.rstrip
end
