class EnemyGenerator

  @@last_id = 0
  @@used_id = []

  def initialize

    @id = rand( 1..100 )
    while @@used_id.include?( @id )

      @id = rand( 1..100 )

    end

    @@used_id << @id

    @health = rand( 75..100 )
    @weapon = ["axe", "bow", "knife", "spear"]

  end

  def id

    return @id

  end

  def health

    return @health

  end

  def weapon

    return @weapon.sample

  end

end

puts "How many enemies would you like to generate?"
enemies = gets.chomp.to_i

enemies.times do | enemy |

  enemy = EnemyGenerator.new
  puts "ID: #{enemy.id}, HEALTH: #{enemy.health}, WEAPON: #{enemy.weapon}"

end