# Reddit Daily Programmer 290
# Finds Koekpar Numbers from given a range from a file

input_arr = []
k_arr = []

# Reading input from the file
File.read( "input.txt" ).each_line do | line |

  input_arr << line.chop


end

# Splitting the data in the array and flattening it as needed
input_arr.map! { | data | data.to_s.split( " " ) }
input_arr.flatten!

# Going through the aray until its empty
until input_arr.empty? do

  # Setting up the start and end of the ranges
  range_end = input_arr.pop
  range_start = input_arr.pop

  # Initializing the counter to loop through
  ctr = range_start.to_i

  # While loop to iterate through the range
  while ctr <= range_end.to_i

    k_check = ctr ** 2

    # Getting the length of the squared number to split later
    case k_check.to_s.length

      when (1..20)


        # Convert the number to a string and set up to slice it
        k_string = k_check.to_s
        slice_len = k_string.length / 2

        # Slice the first and second half of the string
        f_slice = k_string[0..slice_len-1].to_i
        s_slice = k_string[slice_len..-1].to_i

        # As per Kaprekar numbers the second number cannot be 0
        if s_slice === 0
          ctr += 1
          next

        elsif f_slice + s_slice == ctr

          k_arr << ctr

        end


    end

    ctr += 1

  end

  # Printing the needed info before clearing things and looping again through the array
  print "This is K arr: #{k_arr}"
  puts
  puts range_start
  puts range_end
  k_arr.clear


end

=begin

https://www.reddit.com/r/dailyprogrammer/comments/5aemnn/20161031_challenge_290_easy_kaprekar_numbers/

Explanation/Input Description

In mathematics, a Kaprekar number for a given base is a non-negative integer, the representation of whose square in that base can be split into two parts that add up to the original number again. For instance, 45 is a Kaprekar number, because 452 = 2025 and 20+25 = 45. The Kaprekar numbers are named after D. R. Kaprekar.
I was introduced to this after the recent Kaprekar constant challenge.
For the main challenge we'll only focus on base 10 numbers. For a bonus, see if you can make it work in arbitrary bases.

// Input

Your program will receive two integers per line telling you the start and end of the range to scan, inclusively. Example:


// Sample input:

1 50

// Output:
Your program should emit the Kaprekar numbers in that range. From our example:

// Sample Output:

45




=end