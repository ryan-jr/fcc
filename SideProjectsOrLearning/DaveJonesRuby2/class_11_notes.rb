# Skipping over class 10 because of no audio
# Class 11 covers class inheritance

# By convention Ruby has classes in separate files
# To include those classes we use require './FILENAME.rb'
# We have to use singlequotes so that there is no escape
# Inheritance allows us to write classes that inherit methods from its parent class

class Animal

  attr_accessor :color, :name

  def initialize( color, name )

    @color = color
    @name = name

  end

end
  # the < indicates that the class that is created inherits all of the methods of the parent class
  # Here we have the speak method and all we have to do is create Tiger.new, and we don't have to do Animal.new like we did before because Tiger acts like an animal, but has

class Tiger < Animal

    def speak

      return "grrrr"

    end

end


# Old method of creating an animal before we created the Tiger class that inherited from Animal
# tiger = Animal.new( "orange", "tigger" )



tiger = Tiger.new( "orange", "tigger" )
puts tiger.speak

# Testing Animal class and things that are/are not avaialble to it
# bear = Animal.new( "brown", "paddington" )
# puts bear.speak   // Throws an error because .speak is not available to the Animal class
