class LRUCache
    def initialize(length)
        @cache = []
        @size = 4
    end

    def count
        count = 0
        cache.each do |ele|
            count += 1 if ele != nil
        end
        count
    end

    def add(el)
        if cache.include?(el)
            cache.delete(el)
        end
        if cache.length == size
            cache.shift
        end
        cache << el
        nil
    end

    def show
        print cache
    end

    private

    def cache
        @cache 
    end

    def size
        @size
    end

end


# "I walk the line"
# 5
# [1,2,3]
# 5
# -5
# {a: 1, b: 2, c: 3}
# [1,2,3,4]
# "I walk the line"
#:ring_of_fire
# "I walk the line"
# {a: 1, b: 2, c: 3}