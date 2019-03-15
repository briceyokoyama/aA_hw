class Queue
    attr_reader :queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        self.queue << el
    end

    def dequeue
        self.queue.shift
    end

    def peek
        self.queue[0]
    end

end