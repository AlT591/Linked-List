
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

#recursion
def print_values(list_node)
  if list_node #!= nil
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end


class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        # data = NIL
        # push(10) => data = LinkedListNode.new(10, data)
        # push(5) => data =  LinkedListNode.new(5, data)
        # push(1) => data = LinkedListNode.new(1, data)

        @data = LinkedListNode.new(value, @data)

    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        #pop => "1"; data = data.next_node = LinkedListNode.new(5, LinkedListNode.new(10, nil))
        #pop => "5"; data = data.next_node = LinkedListNode.new(10, nil))
        #pop => "10"; data = data.next_node = nil
        #pop => "nil"; data = nil

        # data = LinkedListNode.new(10, nil)
        # old_data = LinkedListNode.new(5, LinkedListNode.new(10, nil))
        old_data_value = nil
        if @data
            old_data_value = @data.value
            @data = @data.next_node
        end
        return old_data_value
    end
end

def stack_reverse_list(list)
  # Steps:

  # 1: make an empty stack
  stack = Stack.new
  # 2: push each node of old linked list [list_node] to stack unitl the old list is empty[nil]
    while list
        stack.push(list.value)
        list = list.next_node
    end
  # 3: return the stack's linkedlist [stack.data]
   return stack.data  
end


def mutation_reverse_list(list)
  # Steps:
  # 1: Have a empty list to reverse into (RL)
  reversed_list = nil
  #print_values(reversed_list)
  # 2: Consume the nodes of the old list by moving top node to the top of RL
  while list
    # swapping code
    head = list 
    second = list.next_node
    head.next_node = reversed_list #new_reversed_list = head + reversed_list
    reversed_list = head
    list = second
    #print_values(reversed_list)
  end
  # 3: return the reversed list
  return reversed_list
end







  node1 = LinkedListNode.new(37)
  node2 = LinkedListNode.new(99, node1)
  node3 = LinkedListNode.new(12, node2)

 

print_values(node3)

puts "_________"

revlist = mutation_reverse_list(node3)
print_values(revlist)