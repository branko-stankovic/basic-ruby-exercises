def caesar_cipher(plaintext, num)
    plaintext = plaintext.split("")
  
    plaintext.each do |char|
      if char >= "A" && char <= "Z"
        print (65 + ((char.ord - 65 + num) % 26)).chr
      elsif char >= "a" && char <= "z"
        print (97 + ((char.ord - 97 + num) % 26)).chr
      else
        print char
      end
    end
    print "\n"
  end
  
  caesar_cipher("ABCD", 27)
  caesar_cipher("ABCD", -1)
  caesar_cipher("Abcd", 6)
  caesar_cipher("xyza", 676)
  caesar_cipher("Hello, World!", 1)
  caesar_cipher("What a string!", 5)