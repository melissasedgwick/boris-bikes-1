require './lib/docking_station.rb'
require './lib/bike'

#bike = Bike.new
docking_station = DockingStation.new
#docking_station.dock(bike)
#docking_station.bike
#docking_station.release_bike
20.times { docking_station.dock Bike.new }
