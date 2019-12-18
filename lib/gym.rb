class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def list_of_membs
    Membership.all.select{|mem| mem.gym == self} # This method opens the portal towards
    # the other object, the one we want to touch, THROUGH MEMBERSHIP.
    # BECAUSE MEMBERSHIP LINKS LIFTER WITH GYM CLASS
  end

  def list_of_lifters
    list_of_membs.map{ |loslifts| loslifts.lifter} # This method uses the return of the
    # last method and apply a map to filter the lifters with a membership to specific 
    # gym.
  end

  def names_lifters
    list_of_lifters.map{|x| x.name}
  end

  def combined_lift_total
    list_of_lifters.map{|n| n.lift_total}.sum       
  end




end
