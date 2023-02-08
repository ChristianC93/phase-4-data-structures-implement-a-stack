class Stack
    attr_reader :limit

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(val)
        @stack.size == limit ? raise("Stack Overflow") : @stack.push(val)
    end

    def pop()
        val = @stack.pop()
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.empty?
    end

    def full?
        @stack.size == limit ? true : false
    end

    def search(val)
        last = @stack.size - 1
        @stack.index(val) ? last - @stack.index(val) : -1
    end
end
