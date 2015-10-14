require 'DockingStation.rb'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { expect(Bike.new.working?).to eq @bike }

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "return no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end

  it "return bike to docking station" do
    20.times { subject.dock_bike(Bike.new) }
    expect { subject.dock_bike Bike.new }.to raise_error "Docking Station full"
  end

end
