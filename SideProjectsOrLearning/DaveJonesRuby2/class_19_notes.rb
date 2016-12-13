# Lecture 19 covers Double Arrays

# A double array is an array within an array like so: [[1,2,3],[4,5,6]]

# It's possible to think of the first index as the column, and the 2nd index as the row

cells = [

    ["a","b","c"],
    ["e","f","g"],
    ["h","i","j"],
    ["k","l","m"],
    ["n","o","p"],
    ["q","r","s"],
    ["t","u","v"],
    ["w","x","y","z"],

]

cells.each do | row |


  row.each do | col |

    print col.to_s + " "

  end

  puts

end

cells.each do | row |

  puts row.join( " " )

end

# Both of these above do the same thing

box = []
10.times do | row |

  box[row] = []

  10.times do

    box[row] << 0

  end


end

