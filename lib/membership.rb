class Membership
  attr_reader :cost, :lifter, :gym 

  @@all = []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym

    self.class.all << self
  end

  def self.all
    @@all
  end


# ============== EXTRA ============================ #

  # Get a specific lifter who has the highest lift in a specific membership

  def self.lifter_most
    self.all.each do | membership | 
      membership.lifter.memberships.length 
    end
  end


end
