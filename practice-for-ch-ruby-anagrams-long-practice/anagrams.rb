def first_anagram?(string1, string2)
    anagrams = []

    until anagrams.length == string1.length ** string1.length
        anagrams << string1.chars.shuffle.join("")
    end

    anagrams.include?(string2)
end


# p first_anagram?("APPLE", "PEPLA")
# p first_anagram?("RUBY", "YUBRZ")
p first_anagram?("GARY", "YRAG")