require "byebug"

def bad_two_sum?(arr, target) # O(n^2)
    arr.each_with_index do |ele,i|
        arr.each_with_index do |ele2,i2|
            if i2 > i 
                return true if ele + ele2 == target
            end 
        end 
    end 
    false
end 

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6)
# p bad_two_sum?(arr, 10)

def okay_two_sum?(arr, target)  # O(log n) at most efficient, O(n) at least
    return false if arr.length <= 1
    arr.sort!
    checker = arr.shift
    less_than = arr.select { |ele| checker + ele <= target }
    return true if less_than.any? {|ele| checker + ele == target }
    okay_two_sum?(less_than, target)
end

# arr1 = [3, 4, 5, 7, 8]
# arr2 = [2, 5, 1, 6, 88, 2, 4, 3, 4]

# p okay_two_sum?(arr1, 13)
# p okay_two_sum?(arr1, 2)

# p okay_two_sum?(arr2, 91)
# p okay_two_sum?(arr2, 12)

def hash_map(arr, target) # O(n)
    hash = {}
    arr.each do |ele|
        return true if hash.keys.include?(ele)
        hash[target - ele] = true
    end
    false
end

# arr1 = [3, 4, 5, 7, 8]
# arr2 = [2, 5, 1, 6, 88, 2, 4, 3, 4]

# p hash_map(arr1, 13)
# p hash_map(arr1, 2)

# p hash_map(arr2, 91)
# p hash_map(arr2, 12)

