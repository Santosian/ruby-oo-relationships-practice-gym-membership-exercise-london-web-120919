class Lifter

  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self  
  end

  def self.all #acces from everywhere to the instances
    @@all
  end

  def memberships
    Membership.all.select{|mem| mem.lifter == self}

    # para expresar los memberships que un lifter tiene
    # vamos a buscar en esa clase, toda y vamos a selectionar 
    #los elementos que: sean x.()
  end

  def gyms
    memberships.map{|mem|mem.gym}

  end

  def self.average_lift
    self.all.map{|liftr| liftr.lift_total}.sum / self.all.count
  end

end
