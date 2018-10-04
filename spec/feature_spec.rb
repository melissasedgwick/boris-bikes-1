require './lib/docking_station.rb'
require './lib/bike'

bike = Bike.new
docking_station = DockingStation.new(30)
#docking_station.dock(bike)
#docking_station.bike
#docking_station.release_bike
#20.times { docking_station.dock Bike.new }
#docking_station.dock(bike, "broken")

docking_station.dock(bike, "broken")
docking_station.release_bike
