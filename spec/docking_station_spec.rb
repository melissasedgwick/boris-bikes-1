require 'docking_station.rb'


describe DockingStation do

  before(:each) do
    @docking_station = DockingStation.new
    @bike = Bike.new
  end
  it { is_expected.to respond_to :release_bike }
  describe '#release_bike' do
    it 'releases a bike' do
      subject.dock(@bike)
      expect(subject.release_bike).to eq "Bike released"
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'releases working bikes' do
    expect(@bike).to be_working
  end
  it 'docks something' do
    expect(subject.dock(@bike)).to eq "Bike docked"
  end
  it 'returns docked bikes' do
    subject.dock(@bike)
    expect(subject.bike).to eq @bikes
  end

  it "returns error when a docking station is full" do
    DockingStation::DEFAULT_CAPACITY.times { @docking_station.dock Bike.new }
    expect {@docking_station.dock(@bike)}.to raise_error "Docking Station is full"
  end

  it "has a default capactity of 20" do
    expect(subject.capacity).to eq(20)
  end

  it "allows the capacity to be set to 60 for new docking stations" do
    expect(DockingStation.new(60).capacity).to eq(60)
  end

  it "accepts a second parameter to determine bike condition" do
    expect(@docking_station.dock(@bike, "broken")).to eq "Faulty bike reported"
  end

  it "raises an error when trying to release a broken bike" do
    @docking_station.dock(@bike, "broken")
    expect{@docking_station.release_bike}.to raise_error "No bikes available"
  end
end
