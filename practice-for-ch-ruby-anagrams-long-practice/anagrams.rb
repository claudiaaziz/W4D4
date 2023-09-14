def first_anagram?(string1, string2) # O(n^n)
    anagrams = []

    until anagrams.length == string1.length ** string1.length 
        anagrams << string1.chars.shuffle.join("") #
    end

    anagrams.uniq.include?(string2)
    # anagrams
end

# p first_anagram?("APPLE", "PEPLA")
# p first_anagram?("RUBY", "YUBR")
# p first_anagram?("GARY", "YRAG")
# p first_anagram?("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ZYXWVUTSRQPONMLKJIHGFEDCBA")

def second_anagram?(string1, string2) # O(n)
    delete_me = string2.split("")
  (0...string1.length).each do |i|
    index = delete_me.find_index(string1[i]) 
    delete_me.delete_at(index) if !index.nil?
  end
  delete_me.empty?
end

# p second_anagram?("APPLE", "PEPLA")
# p second_anagram?("RUBY", "YUBR")
# p second_anagram?("CLAUDIA", "DIACLAU")
# p second_anagram?("GARY", "YERRRRR")

def third_anagram?(string1, string2) # O(n log n)
    string1.chars.sort == string2.chars.sort
end

# p third_anagram?("APPLE", "PEPLA")
# p third_anagram?("RUBY", "YUBR")
# p third_anagram?("CLAUDIA", "DIACLAU")
# p third_anagram?("GARY", "YERRRRR")

def fourth_anagram?(string1, string2) # O(n)
    str1_hash = Hash.new(0)
    str2_hash = Hash.new(0)
    string1.each_char { |char| str1_hash[char] += 1 }
    string2.each_char { |char| str2_hash[char] += 1 }
    str1_hash == str2_hash
end

p fourth_anagram?("APPLE", "PEPLA")
p fourth_anagram?("RUBY", "YUBR")
p fourth_anagram?("CLAUDIA", "DIACLAU")
p fourth_anagram?("GARY", "YERRRRR")