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
      expect(subject.release_bike).to eq @bike
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'releases working bikes' do
    expect(@bike).to be_working
  end
  it 'docks something' do
    expect(subject.dock(@bike)).to eq @bike
  end
  it 'returns docked bikes' do
    subject.dock(@bike)
    expect(subject.bike).to eq @bike
  end

  it "returns error when a docking station is full" do
    @docking_station.dock(@bike)
    expect {@docking_station.dock(@bike)}.to raise_error "Docking Station is full"
  end
end
