# Class to create an inventory record

# We're using class 6 to create getters and setters
# getters just get the data from the class
# We write getters and setters for the size array because we don't want to expose to the outside world that we are using an array
# remeber that getters return what is being asked for, and writers allow you to change something.

class Item

  # The shortcut for getters, setters, and instance variables is attr_accessor :NAME, for just a getter write attr_reader :VARNAME, for just a setter attr_writer :VARNAME
  # :VARNAME in the above is essentially a constant string

  attr_accessor :description, :price

  # Setting instance variables
  # The ID should be a random 3 digit number
  def initialize( description, price )

    @id = rand(100..999)
    @description = description
    @price = price
    @size = []

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