# Reddit Daily Programmer 287

def largest_digit( num )

  arr = num.to_s.split( "" )
  arr.map! { | num | num.to_i }
  puts arr.max



end




largest_digit(120)

=begin

https://www.reddit.com/r/dailyprogrammer/comments/56tbds/20161010_challenge_287_easy_kaprekars_routine/



Write a function that, given a 4-digit number, returns the largest digit in that number. Numbers between 0 and 999 are counted as 4-digit numbers with leading 0's.
largest_digit(1234) -> 4
largest_digit(3253) -> 5
largest_digit(9800) -> 9
largest_digit(3333) -> 3
largest_digit(120) -> 2
In the last example, given an input of 120, we treat it as the 4-digit number 0120.

=end