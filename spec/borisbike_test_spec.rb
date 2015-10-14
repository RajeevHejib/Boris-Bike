require 'DockingStation.rb'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { expect(Bike.new.working?).to eq @bike }

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "return no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "return bike to docking station" do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
    expect { subject.dock_bike Bike.new }.to raise_error "Docking Station full"
  end

  it "returns capacity 30 when capacity set to 30" do
    subject.capacity = 30
    expect(subject.capacity).to eq 30
  end

  it "returns capacity 20 when nothing passed" do
    expect(subject.capacity).to eq 20
  end

  it "docks a bike and reports it is broken" do
    bike = Bike.new
    bike.working = false
    expect(subject.dock_bike(bike)).to eq subject.bikes[-1]
  end

end
