# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Arnold", 220)
lifter2 = Lifter.new("Wayne", 250)
lifter3 = Lifter.new("Max", 300)

gym1 = Gym.new("Gold's Gym") 
gym2 = Gym.new("World Gym")   
gym3 = Gym.new("24 Hour Fitness") 
gym4 = Gym.new("Planet Fitness") 

memb1 = Membership.new(50, lifter1, gym1)
memb2 = Membership.new(70, lifter1, gym2)
memb3 = Membership.new(80, lifter1, gym3)
memb4 = Membership.new(50, lifter2, gym1)
memb5 = Membership.new(80, lifter2, gym3)
memb6 = Membership.new(50, lifter3, gym1)
memb7 = Membership.new(70, lifter3, gym2)
memb8 = Membership.new(80, lifter3, gym3)
memb9 = Membership.new(100, lifter3, gym4)

binding.pry

puts "Gains!"
