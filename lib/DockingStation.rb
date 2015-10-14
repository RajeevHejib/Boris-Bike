class DockingStation

  attr_reader :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20


  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    fail "bike is broken" if !@bikes[-1].working
    @bikes.pop
  end

  def dock_bike(bike, status=true)
    fail "Docking Station full" if full?
    bike.report if !status
    @bikes << bike
    bike
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.count <= 0
  end


end

class Bike
  attr_accessor :working

  def initialize
    @working = true
  end

  def report
    @working = false
  end

  def working?
    @bike
  end

end
