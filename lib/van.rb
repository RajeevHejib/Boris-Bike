require './lib/DockingStation'


class Van

  attr_accessor :bikes_to_be_fixed, :fixed_bikes

  def initialize
    @bikes_to_be_fixed = []
    @fixed_bikes = []
  end

  def dock_bike(bikes)
    fail "Docking Station full" if full?
    bikes.each {|bike| @bikes_to_be_fixed << bike }
  end



  private

  def full?
    @bikes_to_be_fixed.count >= DEFAULT_CAPACITY
  end

  def empty?
      @bikes.count <= 0
  end

end
