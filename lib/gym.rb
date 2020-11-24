class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
    ## @@all << self
  end

  # Returns a list of all gyms
  def self.all
    @@all
  end

  # Get a list of memberships at a specific gym 
  def gym_memberships
    Membership.all.select do | lifter_memberships |
      lifter_memberships.gym == self
    end
  end

  # Get a list of all the lifters that have a membership to a specific gym
  def gym_lifters 
    gym_memberships.map do | lifter_object |
      lifter_object.lifter
    end
  end

  
  # Get a list of the names of all lifters that have a membership to that gym. 

  def lifter_names 
    gym_lifters.map do | lifter |
      lifter.name
    end
  end

  # Get the combined LIFT TOTAL of EVERY LIFTER that has a membership to that gym
  def lift_totals 
    total_gyms_lift = 0
    gym_lifters.map do | lifter |
      total_gyms_lift += lifter.lift_total
    end
    total_gyms_lift
  end

  

end
