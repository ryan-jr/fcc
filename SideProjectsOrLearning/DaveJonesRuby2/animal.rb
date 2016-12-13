# This is the animal Class from classes 13 and 14

# The animal class takes in a name and a color, with the Zebra class creating a specific method for stripes and the Tiger class having a specific method for speaking that overrides the generic speak method in Animal
class Animal

  attr_accessor :color, :name

  def initialize( name, color )

    @color = color
    @name = name

  end


  def identify

    return "I am a #{self.class}"

  end

  def speak

    return "hello my name is #{@name}"
  end

  # Useful for if we want to write this to a file

  def to_csv

    return "#{@name}, #{@color}"
  end

end

class Tiger < Animal

  # We can use super to add on/inhereit from the class above
  def speak

    return super + " grrrr"

  end

end

class Zebra < Animal

  attr_reader :stripes

  # Using super again to get name/color, and to add on stripes
  def initialize( name, color, stripes )

    @stripes = stripes
    super(name, color)


  end

  def to_csv

    return "#{@name}, #{@color}, #{@stripes}"
  end

end

class Hyena < Animal

end
