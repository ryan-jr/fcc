# Useful Ruby Scripts from r/learnprogramming

## Open a file and strip out newlines from read data

* Puts all data into an array to be accessed

```ruby


input_arr = []

# Reading input from the file
File.read( "input.txt" ).each_line do | line |

  input_arr << line.chop


end

# Splitting the data in the array and flattening it as needed
input_arr.map! { | data | data.to_s.split( " " ) }
input_arr.flatten!


```

## Create random enemies for a dungeon crawler (implemented as a class)

```ruby
# Creating a random enemy generator for fun 
class EnemyGenerator
  
  # Setting the values for an id, health, and weapon
  def initialize

    @id = rand( 1..100 )
    @health = rand( 75..100 )
    @weapon = ["axe", "bow", "mace", "spear"]

  end

  # Getters for id, health, and weapon
  def id

    return @id

  end

  def health

    return @health

  end

  # Weapon requires a random index, otherwise it would return the full array every time
  def weapon
    idx = rand( 0..3 )

    return @weapon[idx]

  end

  
end


puts "how many enemies would you like to generate? "

num = gets.chomp.to_i

num.times do | enemy |

  enemy = EnemyGenerator.new
  puts "ID: #{enemy.id}, Health: #{enemy.health}, WEAPON: #{enemy.weapon} "

end
```
