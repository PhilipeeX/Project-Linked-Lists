# #Assignment
# You will need two classes:

# LinkedList class, which will represent the full list.
# Node class, containing a #value method and a link to the #next_node, set both as nil by default.
# Build the following methods in your linked list class:

# #append(value) adds a new node containing value to the end of the list
# #prepend(value) adds a new node containing value to the start of the list
# #size returns the total number of nodes in the list
# #head returns the first node in the list
# #tail returns the last node in the list
# #at(index) returns the node at the given index
# #pop removes the last element from the list
# #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
# #find(value) returns the index of the node containing value, or nil if not found.
# #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
# Extra Credit
# #insert_at(value, index) that inserts a new node with the provided value at the given index.
# #remove_at(index) that removes the node at the given index.
# Extra Credit Tip: When you insert or remove a node, consider how it will affect the existing nodes. Some of the nodes will need their #next_node link updated.
require 'pry-byebug'
class LinkedList
    attr_accessor :name

    def initialize
        @head = nil
        @tail = nil
    end

    def prepend(node)
        if @head.nil?
          @head = node
          @tail = node
        else
          node.next = @head
          @head = node
        end
      end
    
    def append(node)
        if @head.nil?
            @head = node
            @tail = node
        else
            @tail.next = node
            @tail = node
        end
    end

    def size
      current = @head
      count = 0

      until current.nil?
        count += 1
        current = current.next
      end

      count
    end

    def head
      @head
    end

    def tail
      @tail
    end

    def at(index)
      array = []
      if self.size - 1 < index
        return false
      else
        i = 0
        current = @head
        while i <= index 
          array << current
          current = current.next
          i += 1
        end
        array[index]
      end
    end

    def pop
      puts "removendo #{self.at(self.size - 1).data}..."
      return false if @tail.nil?
      if self.size == 1
        @head = nil
        @tail = nil
      elsif self.size == 2
        current = @head
        current.next = nil
        @tail = nil
      else
        self.at(self.size - 2).next = nil
        @tail = nil
      end
    end

    def contains?(value)
      if value.data
        current_node = value.data
      else
        false
      end
      # binding.pry
      current = @head
      while current != self.at(self.size - 1)
        if current.data == current_node
          return true
        end
        current = current.next
      end
      current.data == current_node ? true : false
    end

    def find(value)
      current_node = value
      i = 0
      current = @head
      while i < self.size
        if current == current_node
          return i
        else
          current = current.next
          i += 1
        end
      end
    end

    def to_s
      current = @head
      i = 0
      string = []
      while i < self.size
        string << current.data
        current = current.next
        i += 1
      end
      print '( '
      print string.join(' ) -> ( ')
      print ' )'
    end
end

class Node
    attr_accessor :next, :data
  
    def initialize(data)
      @next = nil
      @data = data
    end

    def value
      @data
    end

end