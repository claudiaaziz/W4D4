def my_min(list) # O(n^2)
    min = list.first
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            min = list[i] if list[i] < list[j] && min > list[i]
        end
    end

    min
end

def my_one_min(list) # O(n)
    min = list.first
    (0...list.length).each do |i|
        min = list[i] if list[i] < min
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_contiguous_subsum(list) # O(n^2)
    combos = []

    (0...list.length).each do |i| 
        (i+1...list.length).each do |j|
            combos << [list[i], list[j]] # O(n^2)
        end
    end

    sums = combos.map { |combo| combo.sum } # likely more O(n)
    sums.max # O(n)
end # O(n^2) + O(2n) #=> drop less-dominant becomes #=> O(n^2)

def faster_largest_contiguous_subsum(list) # O(n)
    largest_sum = list.first
    (0...list.length-1).each do |i|
        largest_sum = list[i] + list[i+1] if list[i] + list[i+1] > largest_sum
    end
    largest_sum
end

list = [5, 3, -7]
p faster_largest_contiguous_subsum(list) # => 8
list = [2, 3, -6, 7, -6, 7]
p faster_largest_contiguous_subsum(list) # => 8 (5 wrong)
list = [-5, -1, -3]
p faster_largest_contiguous_subsum(list) # => -1 (-4 wrong)

# # possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7