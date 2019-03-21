def sluggish(arr)

    arr.each do |ele1|
        longest = true
        arr.each do |ele2|
            if ele2.length > ele1.length
                longest = false
            end
        end
        return ele1 if longest
    end
end

def merge_sort(arr)
    return arr if arr.length == 1
    

    mid_idx = arr.length/2

    left = merge_sort(arr[0...mid_idx])
    right = merge_sort(arr[mid_idx..-1])

    merge(left, right)

end

def merge(left, right)
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

def dominant(arr)
    sorted = merge_sort(arr)

    sorted[-1]
end

def clever(arr)
    longest_fish = nil

    arr.each do |ele|
        if longest_fish == nil || ele.length > longest_fish.length
            longest_fish = ele
        end
    end
    
    longest_fish

end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)
    tiles_array.index(dir)
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(dir, tiles_hash)
    tiles_hash[dir]
end