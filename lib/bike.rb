class Bike
  attr_accessor :working

  def initialize
    @working = true
  end

  def report
    @working = false
  end

end
