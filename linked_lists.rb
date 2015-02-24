# Linked Lists: https://github.com/turingschool/challenges/blob/master/linked_lists.markdown

class LinkedLists

  attr_reader :head

  # iterative

  def push(data)
    node = Node.new(data)
    if head.nil?
      # assign it to head since we are empty
      @head = node
    else
      current = head
      while current.next_node
        current = current.next_node
      end
      current.next_node = node
    end
  end

# def count(node)
#   if node.nil?
#     0
#   else
#     1
# end


  # recursive

 def count(node = head) # how does one know that node is supposed to go here?;
                        # i think: nodes are the only thing that can be in the list, therefore
                        # they're the only thing that can be counted and passed as an argument
                        # node must default to head because head node is the only node that is
                        # required for a linked list to exists. if it isn't assigned a count
                        # it can only be head
   if node.nil?    # if nothing exists in node then a linked lists doesn't exist and any data
                   # pushed into it, creates the list
     0
   else
     1 + count(node.next_node) # node is a new instance of Node class and thus any methods called
                               # on it can only exist in the Node class. That's why there isn't
                               # a next_node method in the LinkedLists class. That's also why
                               # next_node is set as an attr_accessor, so instances of LinkedLists
                               # can change its state/value
   end
 end

# def push(data, node = head) # how does one know what head this refers to?; there is a head in the
#                             # attr_reader; but since this is pass through as an argument, should
#                             # how does one know it doesn't come through from the method call
#   if node.nil?
#     @head = Node.new(data)
#   else
#     if node.next_node.nil?
#     # new data can go in 2 places
#       node.next_node = Node.new(data)
#     else
#       push(data, node.next_node)
#     end
#   end
# end
#     # -> next_node of node
#     # or .... somewhere down the list
# def position(index, node = head)
#   return nil unless node #node returns truthy if anything is in there; return is an early break
#   if index == 0
#       node.data
#   else
#     position((index - 1), node.next_node)
#   end
# end
#
# def pop(node = head)
#   if node.jf
#   end
# end
#
end

class Node

  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
  end

end

# Challenge
#
# Write an implementation of a linked list which can at least do all of the following:
#
# "append" elements to the end of the list
# Count the number of the elements in the list
# access the "tail" (last element) of the list
# "pop" an element from the end of the list
# access an element by numeric position (as with an array index)
# It would be great if your list could also do some of these things:
#
# Pop the "first" element (head gets removed, second element becomes head)
# Push an element onto the beginning of the list (first element becomes second element)
# Remove the (first occurance | all occurances) of an element by data content
# Remove an element by position
# Insert an element at an arbitrary position
# Add an element after a known node
# Find whether a data element is or is not in the list
# Find the distance between two nodes
# Template
#
# class IterativeLinkedList
#   # A list using Iterative approaches
#   end
#
#   class RecursiveLinkedList
#     # A list using Recursive approaches
#     end
#
#     class Node
#       # A single node for either list type
#       end
#
#       list = IterativeLinkedList.new
#       list.push("hello")
#       list.push("world")
