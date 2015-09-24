require_relative 'Person.rb'
require_relative 'Zombie.rb'


personas = []

10.times do |n|
  personas << Person.new("Persona #{n}")
end

zombies = []

5.times do |n|
  zombies << Zombie.new("Mai #{n}")
end

puts personas.count
puts zombies.count

while personas.count > 0
  zombies.each(&:walk)
  personas.each(&:run!)
  personas.each do |p|
    p.danger? zombies
    if p.zombified? zombies
      muerto = personas.delete(p)
      zombies << Zombie.new("#{muerto.name}")
    end
  end
end

puts personas.count
puts zombies.count