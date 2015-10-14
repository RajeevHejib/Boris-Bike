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
    @bikes.pop
  end

  def dock_bike(bike)
    fail "Docking Station full" if full?
    @bikes << bike
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

  def working?
    @bike
  end

end
