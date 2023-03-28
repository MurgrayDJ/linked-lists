#Author: Murgray D. John
#Date: 3/27/2023
#Purpose: To practice with the creation and maintenance of linked lists

class LinkedList
  class Node
    attr_reader :value
    attr_accessor :next_node

    def initialize(value=nil, next_node=nil)
      @value = value
      @next_node = next_node
    end
  end

  def initialize(head=nil, tail=nil)
    @head = head
    @tail = tail
  end

  def head
    @head
  end

  def tail
    @tail
  end

  # second = Node.new(4, nil)
  # first = Node.new(3, second)
  # list = LinkedList.new(first)
  # puts list.head.next_node.value
end