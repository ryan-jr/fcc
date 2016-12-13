# This lecture covers going further into inheritance
# Some languages such as Java allow for multiple inheritance but Ruby only allows for single inheritance
# Ruby gets around multiple inheritnace by allowing for Mixins

class Animal

  attr_accessor :color, :name

  def initialize( color, name )

    @color = color
    @name = name

  end

  # Self.class allows Ruby to ID what kind of class it is
  def identify

    return "I am a #{self.class}"

  end

  def speak

    return "hello my name is #{@name}"
  end

end

class Tiger < Animal

  # We can use super to add on/inhereit from the class above
  def speak

    return super + " grrrr"

  end

end

class Zebra < Animal

  # Here we use super to add additional features to the Zebra class
  # We have color, name returned to the parent class via super, but we also have stripes
  def initialize( color, name, stripes )

    @stripes = stripes
    super(color, name)


  end

end

class Hyena < Animal

end

tiger = Tiger.new( "orange", "tigger" )

# The following speak method will override the speak method in the
puts tiger.speak


puts tiger.identify
# The above returns Tiger, but not Animal, even though the ID method is in the animal class.  This is because self is a Tiger object which then looks to the Animal class.

zebra = Zebra.new( "black and white", "Zany", 20)

puts zebra.inspect

hyena = Hyena.new( "grey", "Hector")


puts hyena.identify
