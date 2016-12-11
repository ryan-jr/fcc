# Reddit Daily Programmer 291
# Finds if a word is viable/valid given a set of letters

# Reading input from the file
file = File.open( "input.txt", "r" )
data = file.read
data = data.split( " " )

# Setting the necessary variables
max_weight = data[ 0 ]
max_temp = data[ 1 ]
ctr = 1
arr = []


# Slicing the rest of the array before we iterate through it
data = data[ 2..data.length ]

# iterating through the array that was created from data.split and assigning local variables as neccessary
data.each_with_index do | info, index |

  if index.even? == true

    weight = info

  else if index.odd? == true

    weight = data[ index - 1 ].to_i
    temp = info.to_i

  end

    if max_weight.to_i <= weight && max_temp.to_i >= temp
      
      arr << ctr

    end

  ctr += 1

  end



end
puts arr



=begin

https://www.reddit.com/r/dailyprogrammer/comments/5bn0b7/20161107_challenge_291_easy_goldilocks_bear/

Explanation/Input Description
Once upon a time, there lived an adventurous little girl called Goldilocks. She explored the world with abandon, having a lot of fun. During her latest foray into the woods, she found another bear home -- though this one is home to many more bears. Having learned from her previous experiences, Goldilocks knows that trial and error is not an efficient way of finding the right chair and porridge to help herself to.
The task falls to you: given descriptions of Goldilocks' needs and of the available porridge/chairs at the dinner table, tell Goldilocks which chair to sit in so the chair does not break, and the porridge is at an edible temperature.

// Formal Input

The input begins with a line specifying Goldilocks' weight (as an integer in arbitrary weight-units) and the maximum temperature of porridge she will tolerate (again as an arbitrary-unit integer). This line is then followed by some number of lines, specifying a chair's weight capacity, and the temperature of the porridge in front of it.


// Sample input:

100 80
30 50
130 75
90 60
150 85
120 70
200 200
110 100

Interpreting this, Goldilocks has a weight of 100 and a maximum porridge temperature of 80. The first seat at the table has a chair with a capacity of 30 and a portion of porridge with the temperature of 50. The second has a capacity of 130 and temperature of 60, etc.
Formal Output

The output must contain the numbers of the seats that Goldilocks can sit down at and eat up. This number counts up from 1 as the first seat.
Sample output:
2 5

Seats #2 and #5 have both good enough chairs to not collapse under Goldilocks, and porridge that is cool enough for her to eat.

Solve Time: 1hr 5min

# Passes both test input and challenge input

=end