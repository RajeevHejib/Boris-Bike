require './lib/bike.rb'

class Dockingstation

  attr_reader :bikes, :broken_bikes
  attr_accessor :capacity


  DEFAULT_CAPACITY = 20


  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
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

  def get_broken_bikes
    @bikes.each {|bike| @broken_bikes << bike if bike.working == false}
  end

  def load_van
    van=Van.new
    van.dock_bike(@broken_bikes)
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.count <= 0
  end


end
