# Cipher Challenge

# Release 1 : Comment the code
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def decoded_cipher(coded_message) # This line creates the decoded_cipher method. 
  input = coded_message.downcase.split("") # takes the parameter and breaks it down into individual lowercase letters, in an array, that is stored in "input." 
  decoded_sentence = [] # setting up an empty array to hold the decoed message. 
  cipher = {"e" => "a",   # Beginning a shift hash - giving each letter in the alphabet (the key) a shifted letter (the value). 
            "f" => "b",   # A hash is not the best way to do this, there must be a way to automate. 
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # This is starting an each loop to go through each individual letter from the input. 
    found_match = false  # This makes it so the method can continue looping through the cipher hash until it finds a match. 
    cipher.each_key do |y| # Now it is looping through each key in cipher, trying to find a matching letter from input. 
      if x == y  # X is the un-decoded letter from input. y is the corresponding shifted letter from the cypher. This expression is checking to see if the un-decoded letter matches each letter in the cipher hash. 
        decoded_sentence << cipher[y] # If there is a match, the decoded letter gets sent into the decoded_sentence array. 
        found_match = true # Set found_match to true so it can stop looping through the array. 
        break  # It's breaking to stop the if statement from running, so the method can move on to the next item in the input array. 
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # This is a long expression to check to see if there is a non-letter character. If there is, it gets decoded to a space. 
        decoded_sentence << " " # decodes special characters to space. 
        found_match = true # sets it to true so it can stop the loop. 
        break # stops the if statment to continue going through the input array. 
      elsif (0..9).to_a.include?(x) # (0..9).to_a turns 0-9 into an array. include?(x) is checking to see if there are any numbers in the un-decoded sentence, and if so, adding it to the decoded sentence array. 
        decoded_sentence << x # sending it to the decoded_sentence array. 
        found_match = true # found_match to true 
        break # stopping the if statment. 
      end # End of the if statement. 
    end # end of the loop that searches through the cipher keys. 
    if not found_match  # If found_match is still false at this point, the undecoded letter still gets sent into the decoded_sentence array. 
      decoded_sentence << x # sending un-decoded letter into the array. 
    end # stopping the if statement
  end # ends the loop through the undecoded sentence array. 
  decoded_sentence = decoded_sentence.join("") # joining the array of decoded letters. 

  return decoded_sentence # Returns the string verison of the decoded_sentence array. 
end

puts "Decoding messages..."
puts decoded_cipher("fi%wyvi%xs^hvmro^csyv#szepxmri")
puts decoded_cipher("asa,&csy^qywx#lezi^er@eajyp^psx$sj%jvii#xmqi&sr#csyv*lerhw!")
puts decoded_cipher("xs*amr@xli%keqi,#csy@qywx#ompp&qi,&nslr#vsqivs.")
puts decoded_cipher("izivcfshc*ks@xs*gsppiki,#wxyhc*levh,%wxyhc#levh.")
puts decoded_cipher("ai@mrxirh^xs%fikmr&sr*xli&jmvwx^sj^jifvyevc@yrviwxvmgxih&wyfqevmri%aevjevi.")
puts 

# Release 3: Refactor the initial solution

def decoded_cypher(coded_message)
  coded_characters = coded_message.downcase.split('')
  @base_cypher = ("a".."z").to_a
  decoded_message = []
  coded_characters.each do |character|
    if character.match(/[a-z]/)
      coded_index = @base_cypher.index(character)
      if coded_index > 26
        input_index += 26
      end
      decoded_message << @base_cypher[coded_index - 4]
    elsif character.match(/\W/)
      decoded_message << " "
    else
      decoded_message << character
    end
  end
  decoded_message
end





# DRIVER TESTS GO BELOW THIS LINE
puts "Running tests for `decoded_cipher`..."
puts decoded_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true

# Release 2: Write additional tests
# Create more driver test code based on the decoded messages. Driver test code statements should always return "true."

puts decoded_cipher("m%ksx&99^tvsfpiqw") == "i got 99 problems"
puts decoded_cipher("!wxverki") == "!strange"
puts decoded_cipher("fi%wyvi%xs^hvmro^csyv#szepxmri")
puts decoded_cipher("asa,&csy^qywx#lezi^er@eajyp^psx$sj%jvii#xmqi&sr#csyv*lerhw!")
puts decoded_cipher("xs*amr@xli%keqi,#csy@qywx#ompp&qi,&nslr#vsqivs.")
puts decoded_cipher("izivcfshc*ks@xs*gsppiki,#wxyhc*levh,%wxyhc#levh.")


puts
puts "Finished running tests."
