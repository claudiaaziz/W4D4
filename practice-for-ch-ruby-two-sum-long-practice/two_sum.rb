def bad_two_sum?(arr, target) # O(n^2)
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target  
    end
  end
  false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target)
  return false if arr.empty?
  sorted = arr.sort
  mid_idx = sorted.length / 2
  mid_ele = sorted[mid_idx]

  left = sorted[0...mid_idx]
  right = sorted[mid_idx+1..-1]

  if mid_ele == target
    return true
  elsif mid_ele < target
    right_res = okay_two_sum?(right, target)
    return false if right_res == false
    return true
  else
    okay_two_sum?(left, target)
    return true
  end
  

end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false
p okay_two_sum?(arr, 8)


def two_sum?(arr, target)
  hash = {}
  
  arr.each do |num|
    return true if hash.has_key?(num)
    hash[target-num] = true
  end
  return false
end

arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# 6 - 0 #=> hash[6]
# 6 - 1 #=> hash[5]
# TRUEEEEEEEE
# p two_sum?(arr, 10) # => should be false