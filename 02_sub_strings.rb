dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(words, dict)
  hash = Hash.new(0)

  words.downcase.split.each do |word|
    dict.each do |dict_word|
      hash[dict_word] += 1 if word.include?(dict_word)
    end
  end

  hash
end

p substrings('below', dictionary) #=> { "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2,
#     "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
