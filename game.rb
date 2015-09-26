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
  personas.each_with_index do |persona, index|
    persona.danger? zombies
    if persona.dead? zombies
      zombies << Zombie.new("#{persona.name}")
      personas[index] = nil
    end
  end
  personas.compact!
end

puts personas.count
puts zombies.count