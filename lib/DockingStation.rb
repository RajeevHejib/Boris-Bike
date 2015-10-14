class DockingStation

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
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
