# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
kah = Lifter.new("Kah", 185)
ludy = Lifter.new("Ludy", 45)

i = Gym.new("Iroh's Gym")
b = Gym.new("Blink")
r = Gym.new("Rec")

ki = Membership.new(0, kah, i)
kb = Membership.new(27, kah, b)
kr = Membership.new(25, kah, r)

ludy.new_gym(20, i)


binding.pry

puts "Gains!"
