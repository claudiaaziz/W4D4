def first_anagram?(string1, string2)
    anagrams = []

    until anagrams.length == string1.length ** string1.length #O(n^2)
        anagrams << string1.chars.shuffle.join("") #
    end

    anagrams.uniq.include?(string2)
    # anagrams
end

# p first_anagram?("APPLE", "PEPLA")
# p first_anagram?("RUBY", "YUBR")
# p first_anagram?("GARY", "YRAG")
# p first_anagram?("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "ZYXWVUTSRQPONMLKJIHGFEDCBA")

def second_anagram?(string1, string2)
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


