class DockingStation

  attr_reader :bike, :capacity

  def initialize
    @bikes = []
  end


  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "Docking Station full" if @bikes.count >= 20
    @bikes << bike
  end

  def bike
    @bike
  end

end

class Bike


  def working?
    @bike
  end

end
