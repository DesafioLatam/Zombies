class Entity
  attr_accessor :name, :x, :y

  def initialize(name = nil, x = nil, y = nil)
    @name = name
    @x = x || rand(1..10)
    @y = y || rand(1..10)
    @type = 'Undef'
  end
  
  def to_s
    "Type: #{@type} -> #{@name} esta en la posicion #{@x}, #{@y}"
  end
  
  def to_hash
    hash = {}
    instance_variables.each do |var|
      hash[var.to_s.delete('@')] = instance_variable_get(var)
    end
  end
end
