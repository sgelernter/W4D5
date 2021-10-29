def first_anagram?(str1,str2) #O(n!)
    anagrams = str1.split("").permutation.to_a
    anagrams.map! { |arr| arr.join("") }
    anagrams.include?(str2)
end 

p first_anagram?("gizmo", "sally")
p first_anagram?("elvis", "lives")
p first_anagram?("beardxxyyzz", "xyzxyzbread")