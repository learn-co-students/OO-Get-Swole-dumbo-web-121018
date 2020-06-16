class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def all_memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def all_lifters
    lifters = Membership.all.map do |membership|
      if membership.gym == self
        membership.lifter
      end
    end

    lifters.select {|lifter| lifter != nil}
  end

  def names_of_all_lifters
    all_lifters.map {|lifter| lifter.name}
  end

  def lift_total_of_lifters
    total = 0
    all_lifters.each do |lifter|
      total += lifter.lift_total
    end
    total
  end

  def self.all
    @@all
  end
end
