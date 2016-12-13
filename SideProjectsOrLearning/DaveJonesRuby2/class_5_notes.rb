# Class to create an inventory record

class Item

  # Setting instance variables
  # The ID should be a random 3 digit number
  def initialize( description, price )

    @id = rand(100..999)
    @description = description
    @price = price
    @size = []

  end


  # adding and removing sizes
  def add_size( size )

    @size << size

  end

  def remove_size( size )

    @size.delete( size )

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

shirt.remove_size( "Small" )
puts shirt

