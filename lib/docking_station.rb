require_relative 'bike'

class DockingStation
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

<<<<<<< HEAD
attr_reader :bike

=======
  attr_reader :bike
>>>>>>> 6cb00e1
end
#
