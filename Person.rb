class Person

  attr_accessor :name, :x, :y

  def initialize(name = nil, posx = nil, posy = nil)
    @name = name || 'John Doe'
    @x = posx || Random.rand(10)
    @y = posy || Random.rand(10)
  end

  def run!
    @x += Random.rand(-2..2)
    @y += Random.rand(-2..2)
  end

  def to_s
    "#{@name} esta en la posicion #{@x}, #{@y}"
  end

  def danger?(zombies)
    zombies.each do |zombie|
      if zombie.x.between?((@x - 3), (@x + 3)) && zombie.y.between?((@y - 3), (@y + 3))
        puts "Danger, danger #{@name} el zombie #{zombie.name} esta cerca!!! #{zombie}"
      else
        puts "Hey #{@name}, todo esta tranquilo por aqui"
      end
    end
  end

  def zombified?(zombies)
    zombies.each do |zombie|
      if zombie.x.between?((@x - 1), (@x + 1)) && zombie.y.between?((@y - 1), (@y + 1))
        puts "El nuevo zombie #{zombie.name} ha convertido a #{@name} en zombie!!!"
      end
    end
  end

end
