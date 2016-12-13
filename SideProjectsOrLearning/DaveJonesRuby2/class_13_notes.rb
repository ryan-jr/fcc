# This lecture covers having a zoo (an array of all our animals)

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

end

class Tiger < Animal

  # We can use super to add on/inhereit from the class above
  def speak

    return super + " grrrr"

  end

end

class Zebra < Animal

  attr_reader :stripes

  def initialize( name, color, stripes )

    @stripes = stripes
    super(name, color)


  end

end

class Hyena < Animal

end


# Main Program

zoo = []

10.times do | num |

  zoo << Zebra.new( "Zebra#{num}", "black and white", rand(20..100) )

end

zoo.each do | animal |

  puts "#{animal.speak} #{animal.color} #{animal.stripes}"


end

zoo.select! do | zebra |

    zebra.stripes > 50

end

puts zoo.count



