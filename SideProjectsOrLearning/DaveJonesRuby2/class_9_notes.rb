# Class 9 notes
# Continuing constructing the coffee class from lecture 9

# Coffee Class

class Coffee

  @@max_water_level = 32.0 # oz
  @@max_coffee_level = 4.0 # oz
  @@standard_cup = 8.0 # oz  # Amount of coffee
  attr_reader :power, :water_level, :coffee_level

  def initialize

    @power = false                 # Boolean
    @water_level = 0.0             # Float oz
    @clock = Time.now              # Time object
    @coffee_level = 0.0            # Float oz
    @brewed_coffee_level = 0.0     # Float oz
    @filter = false                # Boolean
    @element_temp = 0              # Float as deg C
    @brewing_time = 0.0            # Time
    @brewing = false               # Brewing is happening/or not


  end

  def turn_on

    @power = true

  end

  def turn_off

    @power = false

  end

  def add_water( ounces )

    @water_level += ounces

    if @water_level >= @@max_water_level

      @water_level = @@max_water_level

    end

    def remove_water( ounces )

      @water_level -= ounces

      if ( @water_level <= 0.0 )

        @water_level = 0.0

      end

    end


    def add_coffee( ounces )

      @coffee_level += ounces

      if @coffee_level >= @@max_coffee_level

        @coffee_level = @@max_coffee_level

      end

    end

    def add_filter

      @filter = true

    end

    def remove_filter

      @filter = false

    end

    def brew
      # must be on, have water, have filter, have coffee grounds

      if ( @power && @water_level > 0.0 && @filter && @coffee_level > 0.0 )

        self.remove_water( @@standard_cup )
        @coffee_level -= 2.0  #TODO: Peg the variable
        self.remove_filter
        @brewed_coffee_level += @@standard_cup #TODO: Peg the variable
        @brewing = false
        return "your coffee is ready"

      else

        return "Can't brew right now, missing inputs: Water level: #{@water_level} Coffee level: #{@coffee_level} Filter: #{@filter} Power: #{@power}"

      end

    end

  end

end



my_coffee = Coffee.new

my_coffee.turn_on

puts my_coffee.power



puts my_coffee.power

puts my_coffee.water_level

my_coffee.add_water(20.0)

my_coffee.add_coffee( 10.0 )

puts my_coffee.water_level
my_coffee.add_filter

print my_coffee.brew


