class Zombie
  attr_accessor :name, :x, :y

  def initialize(name = nil, posx = nil, posy = nil)
    @name = name || 'Come cerebro'
    @x = posx || rand(1..20)
    @y = posy || rand(1..20)
  end

  def walk
    @x += rand(-1..1) unless (@x >20 || @x < 1)
    @y += rand(-1..1) unless (@y >20 || @y < 1)
  end

  def talk
    puts 'BRAINNNSSS!!!'
  end

  def to_s
    puts "El zombie #{@name} esta en la posicion #{@x}, #{@y}"
  end

end

pato = Zombie.new

puts pato
pato.talk
pato.walk
puts pato