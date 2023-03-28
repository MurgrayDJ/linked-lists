#Author: Murgray D. John
#Date: 3/27/2023
#Purpose: To practice with the creation and maintenance of linked lists

class LinkedList
  class Node
    attr_accessor :value
    attr_accessor :next_node

    def initialize(value=nil, next_node=nil)
      @value = value
      @next_node = next_node
    end
  end

  attr_accessor :head
  attr_accessor :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def head
    @head
  end

  def tail
    @tail
  end

  list = LinkedList.new()

  list.append(3)
  puts list.head.value

  list.append(4)
  puts list.head.next_node.value

  list.append(5)
  puts list.tail.value
end