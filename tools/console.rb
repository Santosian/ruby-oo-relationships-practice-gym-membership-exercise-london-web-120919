# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lift1 = Lifter.new("Robert", 100)
lift2 = Lifter.new("Diego", 10)
lift3 = Lifter.new("Alejandro", 80)


gym1 = Gym.new("Sport")
gym2 = Gym.new("SUPER")
gym3 = Gym.new("Cruz")
gym4 = Gym.new("ho2")

mem1 = Membership.new(20, lift3, gym1)
mem2 = Membership.new(200, lift1, gym2)
mem3 = Membership.new(90, lift2, gym4)
mem4 = Membership.new(400, lift2, gym2)
mem5 = Membership.new(150, lift3, gym2)
mem6 = Membership.new(400, lift1, gym3)
binding.pry
puts "Gains!"
