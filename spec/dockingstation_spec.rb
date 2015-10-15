require './lib/dockingstation.rb'

describe Dockingstation do
  bike_in_van = []
  let(:bike) { double(:bike, working: false) }
  let(:van) { double(:van, :bike_in_van) }


#  let(:garage) { double(:garage) }


  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "return no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "return bike to docking station" do
    Dockingstation::DEFAULT_CAPACITY.times { subject.dock_bike(bike) }
    expect { subject.dock_bike(bike) }.to raise_error "Docking Station full"
  end

  it "returns capacity 30 when capacity set to 30" do
    subject.capacity = 30
    expect(subject.capacity).to eq 30
  end

  it "returns capacity 20 when nothing passed" do
    expect(subject.capacity).to eq 20
  end

  it "docks a bike and reports it is broken" do
    expect(subject.dock_bike(bike)).to eq subject.bikes[-1]
  end

  it "doesn't return bike when its broken" do
    subject.dock_bike(bike)
    expect {subject.release_bike}.to raise_error "bike is broken"
  end

  it "get broken bikes" do
    Dockingstation::DEFAULT_CAPACITY.times {subject.dock_bike(bike)}
    subject.get_broken_bikes
    expect(subject.broken_bikes.all? {|bike| bike.working == false }).to eq true
  end

  it "will deliver to garage" do
    Dockingstation::DEFAULT_CAPACITY.times {subject.dock_bike(bike)}
  end

  it "will load a van" do
    Dockingstation::DEFAULT_CAPACITY.times {subject.load_van(bike_in_van)}
  end

end
