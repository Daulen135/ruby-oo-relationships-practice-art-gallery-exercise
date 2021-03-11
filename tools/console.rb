require_relative '../config/environment.rb'

a1=Artist.new("Vangog",30)
a2=Artist.new("Pikasso",20)
a3=Artist.new("Levitan",20)

g1=Gallery.new("Star", "Houston")
g2=Gallery.new("Show","Austin")
g3=Gallery.new("Drive","Dallas")

p1=Painting.new(a2,g1,"Sunset",2500)
p2=Painting.new(a1,g2,"Sea Dream",5000)
p3=Painting.new(a3,g3,"Hopes",5000)
p4=Painting.new(a3,g1,"New",15000)

binding.pry

puts "Bob Ross rules."
