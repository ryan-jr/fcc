# Takes 2 words and determines if one is an anagram of the other

# Reddit Challenge 283
# https://www.reddit.com/r/dailyprogrammer/comments/52enht/20160912_challenge_283_easy_anagram_detector/

=begin

Description

An anagram is a form of word play, where you take a word (or set of words) and form a different word (or different set of words) that use the same letters, just rearranged. All words must be valid spelling, and shuffling words around doesn't count.
Some serious word play aficionados find that some anagrams can contain meaning, like "Clint Eastwood" and "Old West Action", or "silent" and "listen".
Someone once said, "All the life's wisdom can be found in anagrams. Anagrams never lie." How they don't lie is beyond me, but there you go.
Punctuation, spaces, and capitalization don't matter, just treat the letters as you would scrabble tiles.
Input Description

You'll be given two words or sets of words separated by a question mark. Your task is to replace the question mark with information about the validity of the anagram. Example:
"Clint Eastwood" ? "Old West Action"
"parliament" ? "partial man"
Output Description

You should replace the question mark with some marker about the validity of the anagram proposed. Example:
"Clint Eastwood" is an anagram of "Old West Action"
"parliament" is NOT an anagram of "partial man"

=end

def anagrams( first_word, second_word )

  ana = true
  first_word = first_word.downcase.delete( " " ).split( "" )
  second_word = second_word.downcase.delete( " " ).split( "" )


  # Loop through each of the 2nd words letters
  second_word.each do | letter |

      # See if the letter in the 2nd word is in the first word
      # If it is, delete that letter at the first index, and then move on
      if first_word.index( letter )

        # Find and delete at specific index in order to find other characters

        x = first_word.find_index( letter )
        first_word.delete_at( x )
      else

        # If a characters is not found set bool to false
        # This could also be short circuited to return false
        puts "#{letter} Was not found so it's NOT an Anagram"
        ana = false
        break

      end


      end


  if ana == true

    puts "ITS AN ANAGRAM"

  else

    puts "NOT AN ANAGRAM"

  end



end

#anagrams( "Clint Eastwood", "Old West Action") Pass
#anagrams( "parliment", "partial man")          Pass
#anagrams( "wisdom", "mid sow")                 Pass
#anagrams( "Reddit", "Gathers No" )             Pass
#anagrams( "Schoolmaster", "The classroom" )    Pass
#anagrams( "Astronmers", "Moon starer" )        Pass
#anagrams( "Vacation Times", "Im Not as Active")Pass
# anagrams( "Dormitory", "Dirty Rooms" ) Pass