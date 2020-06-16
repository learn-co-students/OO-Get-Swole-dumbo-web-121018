class Lifter
  @@all = []
  attr_reader :name, :lift_total
  attr_accessor :gym, :membership

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.avg_lift_total
    sum = 0
    @@all.each do |lifter|
      sum += lifter.lift_total
    end
    sum / @@all.count
  end

  def lifters_memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def lifters_gyms
    Membership.all.map do |membership|
      if membership.lifter == self
        membership.gym
      end
    end
  end

  def total_cost_of_all_memberships
    total = 0
    Membership.all.each do |membership|
      total += membership.cost
    end
    total
  end

  def new_gym_signup(gym,membership_cost)
    Membership.new(membership_cost,self,gym)
  end

  def self.all
    @@all
  end
end
