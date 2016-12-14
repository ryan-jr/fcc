# Reddit Daily Programmer 294
# Finds if a word is viable/valid given a set of letters


def Scrabble( letters, word )


  # Intializing arrays/variables
  wrd = word.split( "" )
  ltrs = letters.split( "" )
  bool = true



  # Make sure that the characters in word are in letters
  wrd.each do | char |

    if ltrs.index( char )

      # Find and delete at specific index in order to find other characters
      x = ltrs.find_index( char )
      ltrs.delete_at( x )


    else

      # If a characters is not found set bool to false
      # This could also be short circuited to return false
      bool = false

    end

  end

return bool

end

=begin

https://www.reddit.com/r/dailyprogrammer/comments/5go843/20161205_challenge_294_easy_rack_management_1/

Explanation/Input Description
Today's challenge is inspired by the board game Scrabble. Given a set of 7 letter tiles and a word, determine whether you can make the given word using the given tiles.
Feel free to format your input and output however you like. You don't need to read from your program's input if you don't want to - you can just write a function that does the logic. I'm representing a set of tiles as a single string, but you can represent it using whatever data structure you want.
Examples

# Test 1: puts Scrabble("eerriin", "eerie")
# Output: False
# Status: passed

# Test 2: puts Scrabble("ladilmy", "daily")
# Output: True
# Status: passed

# Test3: puts Scrabble("orrpgma", "program")
# Output: True
# Status: passed

# Test4: puts Scrabble("orppgma", "program")
# Output: False
# Status: passed
=end