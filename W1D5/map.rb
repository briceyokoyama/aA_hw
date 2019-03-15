class Map
attr_accessor :map
    def initialize
        @map = []
    end

    def set(key, value)
        found = false
        self.map.each_with_index do |ele, i|
            if ele[0] == key
                self.map[i] = [key, value]
                found = true
            end
        end
        if !found
            self.map << [key, value]
        end
    end

    def get(key)
        self.map.each_with_index do |ele, i|
            if ele[0] == key
                return ele
            end
        end
        nil
    end

    def delete(key)
        self.map.each_with_index do |ele, i|
            if ele[0] == key
                self.map = self.map[0...i] + self.map[i+1..-1]
            end
        end
        nil
    end

    def show
        self.map.each do |ele|
            puts "#{ele[0]} => #{ele[1]}"
        end
    end

end