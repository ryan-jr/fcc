# This lecture covers having a zoo (an array of all our animals) and extends on lecture 13

# Still runs with require yay!
require './animal.rb'


class Zoo

  def initialize

    @cage = []

  end

  def add_animal( animal )

    @cage << animal

  end

  def inventory
      ret_str = ""

    @cage.each do | animal |

      ret_str += animal.to_csv + "\n"

    end

    return ret_str

  end

  def count

    return @cage.count

  end

  def make_noise

    ret_str = ""
    @cage.each do | animal |

      ret_str += animal.speak + "\n"

    end

    return ret_str

  end

end


# Main Program
zoo = Zoo.new

10.times do | num |

  zoo.add_animal(Zebra.new( "Zebra#{num}", "black and white", rand(20..100)))

end

puts zoo.count
puts zoo.inventory


5.times do | num |

  zoo.add_animal(Tiger.new("Tigger#{num}", "orange"))

end

puts zoo.inventory

3.times do | num |

  zoo.add_animal(Hyena.new("Whoopi#{num}", "grey"))

end

puts zoo.inventory
puts zoo.make_noise


=begin
zoo.each do | animal |

  puts "#{animal.speak} #{animal.color} #{animal.stripes}"


end

zoo.select! do | zebra |

  zebra.stripes > 50

end

puts zoo.count

=end

