require "byebug"

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(arr)
    arr.each { |ele| return ele if arr.none? { |ele2| ele > ele2 } }
end

def my_min_2(arr)
    smallest = arr.first
    arr.each { |ele| smallest = ele if ele < smallest }
    smallest
end

list_2 = [5, 3, -7]
list_3 = [-5, -1, -3]

def largest_contiguous_subsum(list)
    subs = []
    list.each.with_index do |ele, i|
        list.each.with_index do |ele2, j|
            subs << list[i..j] if j >= i
        end
    end
    subs.map(&:sum).max
end

# p largest_contiguous_subsum(list_2)
# p largest_contiguous_subsum(list_3)

def better_max_subsum(list)
    max_so_far = 0
    current_max = 0
    
    list.each do |ele|
        current_max += ele 
        current_max = 0 if current_max < 0
        #ebugger
        if current_max > max_so_far
            max_so_far = current_max 
        end
    end
    max_so_far
end

# p better_max_subsum([2, 3, -6, 7, -6, 7])

# p better_max_subsum([8, -4, 2, 3, -7])