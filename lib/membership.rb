class Membership

  @@all = []
  attr_accessor :cost, :lifter, :gym

    #this is the information we want to access from 
    #objects from other clases.

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end



end
