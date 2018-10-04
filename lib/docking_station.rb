require_relative 'bike'
#class Bikes
#  attr_reader :capacity
#  attr_reader :bikes
#  def initialize
#    @capacity = 20
#    $bikes = []
#  end
#end


class DockingStation
  DEFAULT_CAPACITY = 20
  def initialize
    @bikes = []
  end
  attr_reader :bike
#  def initialize
#    :capacity = 20
#  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
    "Bike released"
  end

  def dock(bike)
    fail 'Docking Station is full' if full?
    @bikes << bike
    "Bike docked"
  end
private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.count == 0
  end
end
