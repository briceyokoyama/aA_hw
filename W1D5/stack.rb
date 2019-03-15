class Stack
    attr_reader :stack

    def initialize
        @stack = []
    end

    def push(el)
        self.stack << el
    end

    def pop
        self.stack.pop
    end

    def peek
        self.stack[-1]
    end

end