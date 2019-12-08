require_relative 'linkedlist1'
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