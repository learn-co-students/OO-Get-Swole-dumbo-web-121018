class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map { |membership| membership.gym }
  end

  def self.avg_lift
    self.all.inject(0) { |total, lifter| total + lifter.lift_total }.to_f / self.all.count
  end

  def total_cost
    self.memberships.inject(0) { |total, member| total + member.cost }
  end

  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

end
