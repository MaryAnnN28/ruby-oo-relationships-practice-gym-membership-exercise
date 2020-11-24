class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
    # @@all << self 
  end

  # Returns all the lifters in an array
  def self.all
    @@all
  end

  # List of all the memberships that a specific lifter has
  def memberships
    # Option 1: 
    # Membership.all.select do | lifter_membership |
    # lifter_membership.lifter == self
    # Option 2: shorter version 
    Membership.all.select { | memberships | memberships.lifter == self }
  end

  # List of all the gyms that a specific lifter has memberships to
  
  def gyms
    memberships.map do | member |
      member.gym
    end
  end

  # Get the average lift total of ALL LIFTERS
  # iterate through all the lifters 
  # lift_total for all lifters += each lifter's lift_total 

  def self.average_lift
    average = 0
    total_lift = 0
    self.all.each do | lifter_object |
      total_lift += lifter_object.lift_total.to_i
      average = total_lift.to_i / self.all.length.to_i
    end
    average
  end

  # Get the total cost of a SPECIFIC LIFTER's gym MEMBERSHIPS  
  def total_cost
    total_cost = 0 
    memberships.map do | membership_cost |
      total_cost += membership_cost.cost 
    end
    total_cost
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_membership(cost, lifter, gym)
    Membership.new(cost, self, gym)
  end
     

end
