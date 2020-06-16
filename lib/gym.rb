class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def self.members
    Membership.all.map { |member| member.lifter }.uniq
  end

  def lifters
    memberships.map { |membership| membership.lifter }
  end

  def total_lift
    lifters.inject(0) { |total, lifter| total + lifter.lift_total }
  end
end
