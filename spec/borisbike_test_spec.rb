require 'DockingStation.rb'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { expect(Bike.new.working?).to eq true }


end
