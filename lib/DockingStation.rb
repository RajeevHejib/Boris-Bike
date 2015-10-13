class DockingStation

  attr_reader :bike, :capacity

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock_bike(bike)
    fail "Docking Station full" if @bike
    @bike = bike
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
