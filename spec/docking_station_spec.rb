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
end
