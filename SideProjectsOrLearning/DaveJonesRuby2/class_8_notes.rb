# Class 8 notes
# Simulating a coffee machine and the properties it would have

# Properties: Water Tank(cups), (on/off heater), timer/clock, power, filter, coffee level, brewing time

# Coffee Class

class Coffee

  @@max_water_level = 32.0 # oz

  attr_reader :power

  def initialize

    @power = false                 # Boolean
    @water_level = 0.0          # Float oz
    @clock = Time.now                 # Time object
    @coffee_level = 0.0          # Float oz
    @brewed_coffee_level = 0.0   # Float oz
    @filter = false                # Boolean
    @element_temp = 0        # Float as deg C
    @brewing_time = 0.0          # Time
    @brewing = false          # Brewing is happening


end

  def turn_on

    @power = true

  end

  def turn_off

    @power = false

  end

end


my_coffee = Coffee.new

my_coffee.turn_on

puts my_coffee.power

my_coffee.turn_off

puts my_coffee.power