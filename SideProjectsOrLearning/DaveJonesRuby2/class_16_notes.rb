# Class 16 covers making a menu class

class Menu

  # Menu choices

  # The splat argument (named menu_args here) takes as many/few args as passed, and puts them into an array to be accessed
    attr_reader :quit

  def initialize( *menu_args )

    @menu_args = menu_args
    @quit = @menu_args.length

  end

  def get_menu_choice

    # Print Menu
    @menu_args.each_with_index do | item, index |
      puts "#{index + 1}. #{item}"

    end

    # Ask user for choice
    puts "Enter your choice"
    choice = gets.to_i
    puts "You chose #{choice}"

    if choice == @quit

      return "Quitting now"

    elsif choice > @quit

      return "An Invalid menu choice. \nPlease make another selection."

    end

  end

  end





menu = Menu.new( "Menu Option 1",
                 "Menu Option 2",
                 "Menu Option 3",
                 "Quit" )


while( ( choice = menu.get_menu_choice) != menu.quit )

  puts "you chose #{choice}"

end
