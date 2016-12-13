# Class to determine side length of a square

class Square

  # Creating initialize method and instance variable(s)
  def initialize( side_len )

    @side_len = side_len

  end

  def side_length=( side_len )

    @side_len = side_len

  end

  # Creating area method to calculate/output area of class square
  def perimeter

    return @side_len * 4

  end

  # Finding the area of a square instance
  def area

    return @side_len * @side_len


  end

  # Writing a method to let the object describe itself

  def to_s

    "This square has a side length of #{@side_len} and an area of #{self.area}"

  end

  # Drawing the object on the console

  def draw

    puts "*" * @side_len
    @side_len.times do

      print "*" + ( " " * ( @side_len - 2) ) + "* \n"

    end

    puts "*" * @side_len
  end

end

a = Square.new( 10 )
b = Square.new( 20 )

a.side_length = 5

a.draw
puts b

=begin

# notes start here

* A class is just a template/blueprint for defining data objects and the methods that can operate on those/that defined object

* Objects are defined from a class and Ruby has built in classes such as String, Fixnum, Float, Array, Hash etc...

* A class defines the objects' state ( descriptors/nouns )( name, status, color, etc.. ) and behavior ( verbs )( what it's doing/can do )


* Intialize is a special method used whenever a new object is created of the class that we're using.  Intitialzie is also where we pass in arguments and assign them to instance variables ( variables that are used for that specific object/in that instance ).

* New objects are created with Classname.new( data to pass through )

* You can think of instance variables as a new cup/mug that was created from the Class blueprint.  Instantiation is when you create a new instance of an object.

* When you have an object, you need to be able to set the various attributes, and the state of the object, Getters get the value of an attribute of an object, and setters let you set the value of an attribute of an object.

* A getter can be a direct return statment inside of a class method e.g. def perimeter would be return side_len * 4 which would be an example of a getter.

* A getter is defining a method that returns the value of an attribute of the object in question.

* Setters let you modify instance variables etc... even after an instance variable is utilized they can be modified with a setter statement

* Setters are defined with
def setter_name=( data_passed_in )
  @instance_var_name = data_passed_in
end

* Setters allow you to update/modify values as neccessary

* We can also create methods to allow objects to describe themselves so that we do not have to constantly write puts a.area or b.area or a.perimeter etc...

* self is similar to the keyword this in other languages, but we use it because

* since we are utilizing/calling a method inside the class, we need a way to refrence where we are at.

* puts by definition calls the method to_s which is VERY convienent when we want to overwrite some functionality in Ruby.  THIS IS WHY WE DO NOT PUTS/GETS INSIDE OF CLASSES, because if we did a puts that was calling a Class method that used puts, it would be 2 putses in a row, and would modify functionality.  We may also want to store the string for later to modify it.

=end