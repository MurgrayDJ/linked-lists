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
end