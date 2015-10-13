require 'DockingStation.rb'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { expect(Bike.new.working?).to eq @bike }

  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it "returns docked bikes" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it { expect{subject.release_bike}.to raise_error "No bikes available" }

  it "returns docking station full" do
    subject.dock_bike(Bike.new)
    expect{subject.dock_bike Bike.new }.to raise_error "Docking Station full"
  end


end
