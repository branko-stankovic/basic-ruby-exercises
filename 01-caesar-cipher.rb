def shift(letter, num)
  if letter >= "A" && letter <= "Z"
      (65 + ((letter.ord - 65 + num) % 26)).chr
    elsif letter >= "a" && letter <= "z"
      (97 + ((letter.ord - 97 + num) % 26)).chr
    else
      letter
    end
end

def caesar_cipher(plaintext, num)
  puts plaintext.split("").map{|char| shift(char, num)}.join("")
end

caesar_cipher("ABCD", 27)
caesar_cipher("ABCD", -1)
caesar_cipher("Abcd", 6)
caesar_cipher("xyza", 676)
caesar_cipher("Hello, World!", 1)
caesar_cipher("What a string!", 5)