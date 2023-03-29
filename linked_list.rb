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


  def at(index)
    current_index = 0
    value = nil
    current_node = @head

    until current_node.nil?
      if current_index == index
        value = current_node.value
        break
      else
        current_index += 1
        current_node = current_node.next_node
      end
    end
    value
  end

  def pop
    current_node = @head
    popped_node = nil
    if @head.nil?
      puts "This list is empty."
    elsif @head == @tail
      popped_node = @head
      @head = @tail = nil
    else
      until current_node.next_node == @tail
        current_node = current_node.next_node
      end
      popped_node = current_node.next_node
      current_node.next_node = nil
      @tail = current_node
    end
    popped_node
  end

  def contains?(value)
    current_node = @head
    node_exists = false

    until current_node.nil?
      if current_node.value == value
        node_exists = true
        break
      else
        current_node = current_node.next_node
      end
    end
    node_exists
  end

  def to_s
    list_as_string = ""
    if @head.nil?
      list_as_string = "This list is empty."
    else
      current_node = @head
      until current_node.nil?
        list_as_string << "( #{current_node.value} ) -> "
        current_node = current_node.next_node
      end
      list_as_string << "nil"
    end
  end

  list = LinkedList.new()

  list.append(3)
  # puts "Current head: #{list.head.value}"
  # puts "Current size: #{list.size}"
  puts list.to_s
  puts "4 is in the list: #{list.contains?(4)}"

  list.append(4)
  # puts "Node after head: #{list.head.next_node.value}"
  puts list.to_s

  list.append(5)
  # puts "Current tail: #{list.tail.value}"  
  # puts "Current size: #{list.size}"
  # puts "Value at index 2 is: #{list.at(2)}"
  puts list.to_s
  puts "4 is in the list: #{list.contains?(4)}"
  puts "Node popped off: ( #{list.pop.value} )"
  puts list.to_s
  

  list.prepend(1)
  # puts "Current head: #{list.head.value}"
  # puts "Current size: #{list.size}"
  puts list.to_s

  
  puts list.to_s
end