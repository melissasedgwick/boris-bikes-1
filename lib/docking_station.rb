require_relative 'bike'


class DockingStation

  DEFAULT_CAPACITY = 20
  attr_accessor :bike, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
    "Bike released"
  end

  def dock(bike, status = "working")
    fail 'Docking Station is full' if full?
    @bikes << bike
    if status == "broken"
      $bike_status = false
      "Faulty bike reported"
    else
      "Bike docked"
    end
  end
private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    if @bikes.count == 0
      return true
    else
      @bikes.each { |bike| return false if bike.working? }
    end
    return true
  end
end
