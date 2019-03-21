def sluggish(arr)

    arr.each do |ele1|
        longest = true
        arr.each do |ele2|
            if ele2.length > ele1.length
                longest = false
            end
        end
        return ele1 if longest
        longest = true
    end


end

def dominant(arr)
    return arr if arr.length == 1
    

    mid_idx = arr.length/2

    left = dominant(arr[0...mid_idx])
    right = dominant(arr[mid_idx..-1])

    dominant_merge(left, right)

end

def dominant_merge(left, right)
    prc = Proc.new {|a,b| a.length <=> b.length}

    merged = []

    until left.empty? || right.empty?
        if prc.call(left[0], right[0]) == 1
            merged << right.shift
        else
            merged << left.shift
        end
    end
    merged + left + right

end

def clever(arr)
    longest_fish = nil

    arr.each do |ele|
        if longest_fish == nil || ele.lenght > longest_fish.lenght
            longest_fish = ele
        end
    end
    
    longest_fish

end

def slow_dance(dir, tiles_array)
    tiles_array.index(dir)
end

def fast_dance(dir, tiles_hash)
    tiles_hash[dir]
end