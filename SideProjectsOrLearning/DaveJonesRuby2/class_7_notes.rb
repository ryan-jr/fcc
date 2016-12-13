# Covering classes and class variables in class 7
# So far we have only covered instance variables and the instance varibales are different for every new object/instance that we create
# Class variables are global across all objects that are created from that class themplate
# We use 2 @ symbols ( @@ ) for class variables
# Instance and class variables might seem weird since we use the . notation to change them i.e. puts shirt.description or shirt.store = "NEW STORE NAME"
# We could create unique IDs by creating a class variable that stores all the IDs that have been used and checking against that list.

class Item

  # The shortcut for getters, setters, and instance variables is attr_accessor :NAME, for just a getter write attr_reader :VARNAME, for just a setter attr_writer :VARNAME
  # :VARNAME in the above is essentially a constant string

  attr_accessor :description, :price

  # Setting instance variables
  # The ID should be a random 3 digit number
  def initialize( description, price )

    @@store = "The Store"
    @id = rand(100..999)
    @description = description
    @price = price
    @size = []

  end

  def store

    return @@store

  end

  def store=( store )

    @@store = store

  end

  # THE FOLLOWING CODE FOR DESCRIPTION AND PRICE BECOMES REDUNDANT WITH THE ABOVE attr_accessor
  # Getter for description
  def description

    return @description

  end

  # Setter for description
  def description=( description )

    @description = description

  end

  def price

    return @price

  end

  def price=( price )

    @price = price

  end

  def id

    return @id

  end

  # adding and removing sizes
  def add_size( size )

    @size << size

  end

  def remove_size( size )

    @size.delete( size )

  end

  def sizes

    return @size

  end

  # Overwriting the string method to apply to this Class/object
  def to_s

    return "#{@id}\t #{@description}\t #{@price}\t Sizes: #{@size.join(", ")}"

  end


end

shirt = Item.new( "shirt", 19.99 )
shirt.add_size( "Large" )
shirt.add_size( "Small" )

puts shirt

#shirt.remove_size( "Small" )
puts shirt

puts shirt.description
puts shirt.price

# Change values
shirt.description = "HI shirt"
shirt.price = 75.00

# Output the values that we just changed
puts shirt.description
puts shirt.price


shirt.sizes.each do | size |

  puts size + " HELLO "

end

puts shirt.store

shirt.store = "The New Store"

puts shirt.store