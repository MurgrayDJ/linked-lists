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

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def size
    size = 0
    current_node = @head
    until current_node.nil?
      current_node = current_node.next_node
      size += 1
    end
    size
  end

  def head
    @head
  end

  def tail
    @tail
  end

  list = LinkedList.new()

  list.append(3)
  puts "Current head: #{list.head.value}"
  puts "Current size: #{list.size}"

  list.append(4)
  puts "Node after head: #{list.head.next_node.value}"

  list.append(5)
  puts "Current tail: #{list.tail.value}"  
  puts "Current size: #{list.size}"

  list.prepend(1)
  puts "Current head: #{list.head.value}"
  puts "Current size: #{list.size}"
end