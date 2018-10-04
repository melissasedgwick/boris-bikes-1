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
  def initialize
    @bikes = []
  end
  attr_reader :bike
#  def initialize
#    :capacity = 20
#  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
    "Bike released"
  end

  def dock(bike)
    fail 'Docking Station is full' if @bikes.count >= 20
    @bikes << bike
    "Bike docked"
  end
end
