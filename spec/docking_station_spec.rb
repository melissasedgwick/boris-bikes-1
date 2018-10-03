require "docking_station.rb"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
end

describe DockingStation do
  it "releases a bike which working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
