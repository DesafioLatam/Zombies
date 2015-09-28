class Zombie < Entity
  attr_accessor :name, :x, :y
    
  def initialize(name = nil, x = nil, y = nil)
    super
    @name = name || 'Come cerebros'
    @type = 'Zombie'
  end

  def walk
    @x += rand(-1..1) unless @x >10 || @x < 1
    @y += rand(-1..1) unless @y >10 || @y < 1
  end

  def talk
    'BRAAAIIIINNN!!!'
  end
end

pato = Zombie.new

puts pato
pato.talk
pato.walk
puts pato
