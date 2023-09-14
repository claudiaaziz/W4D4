def windowed_max_range(arr, w)
    current_max_range = nil

    (0...arr.length-1).each do |i|
        current_window = arr[i..(i+w % arr.length-1)]
        # p current_window
        current_min = current_window.min
        current_max = current_window.max
        current_range = current_max - current_min
        current_max_range = current_range if current_max_range.nil? || current_max_range < current_range
    end

    current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # == 6 # 3, 2, 5, 4, 8