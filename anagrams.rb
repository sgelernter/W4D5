require "byebug"

def first_anagram?(str1,str2) #O(n!)
    anagrams = str1.split("").permutation.to_a
    anagrams.map! { |arr| arr.join("") }
    anagrams.include?(str2)
end 

# p first_anagram?("gizmo", "sally")
# p first_anagram?("elvis", "lives")
# p first_anagram?("beardxxyyzz", "xyzxyzbread")

def second_anagram?(str1, str2)
    
    str1.each_char do |char|
        idx = str2.index(char)
        return false if idx.nil? 
        str2[idx] = ""
    end
    str2.empty? 
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvis", "lives")
# p second_anagram?("beardxxyyzz", "xyzxyzbread")

def third_anagram?(str1, str2)
    arr1, arr2 = str1.split(""), str2.split("")   
    arr1.sort == arr2.sort
end

# p third_anagram?("gizmo", "sally")
# p third_anagram?("elvis", "lives")
# p third_anagram?("beardxxyyzz", "xyzxyzbread")

def fourth_anagram?(str1, str2)
    hash = Hash.new(0)

    str1.each_char.with_index do |char, i|
        hash[char] += 1
        hash[str2[i]] += 1
    end
    hash.values.none? {|val| val.odd? }
end

# p fourth_anagram?("gizmo", "sally")
# p fourth_anagram?("elvis", "lives")
# p fourth_anagram?("beardxxyyzz", "xyzxyzbread")





