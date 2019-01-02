# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

mike = Lifter.new("Mike",200)
jan = Lifter.new("Jan",170)
tom = Lifter.new("Tom",230)
mia = Lifter.new("Mia",190)

blink = Gym.new("Blink")
equinox = Gym.new("Equinox")
nysc = Gym.new("New York Sports Club")

m1 = Membership.new(25,mike,blink)
m2 = Membership.new(30,mia,blink)
m3 = Membership.new(35,mia,nysc)
m4 = Membership.new(40,mia,equinox)


binding.pry

puts "Gains!"
