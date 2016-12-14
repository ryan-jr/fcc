
input_arr = []
word_arr = []
new_word_arr = []

# Reading input from the file
File.read( "Dict.txt" ).each_line do | line |

  input_arr << line.chop


end

# Splitting the data in the array and flattening it as needed
input_arr.map! { | data | data.to_s.split( " " ) }
input_arr.flatten!



input_arr.delete_if { | word | word.length < 5 }

string_one = "qwertyuytresdftyuioknn"
string_two = "gijakjthoijerjidsdfnokg"


input_arr.each do | word |

  if word[0] == string_one[0] && word[word.length - 1] == string_one[string_one.length - 1]

    word_arr << word


  end

end


word_arr.reject! do | words |

  index = 0
  words.chars.any? do | char |
    index = string_one.index( char, index )
    index.nil?
  end

end

puts word_arr


=begin
input = gets.chomp


word_arr.reject! do |word|
  index = 0
  word.chars.any? do |char|
    index = input.index(char, index)
    index.nil?
  end
  puts word_arr
end



words = []

File.open('Dict.txt', 'r') do |file|
  words = file.readlines.collect { |line| line.chomp }
  words.reject! { |word| word.size < 5 }
end


input = gets.chomp
first_char = input.chars[0]
last_char = input.chars[input.size - 1]


candidates =  words.select{ |word| word.start_with?(first_char)}
candidates.select!{ |word| word.end_with?(last_char) }

candidates.reject! do |word|
  index = 0
  word.chars.any? do |char|
    index = input.index(char, index)
    index.nil?
  end
end

puts candidates

=end