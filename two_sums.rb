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

