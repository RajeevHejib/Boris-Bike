require './lib/van.rb'

describe Van do

  let(:broken_bike) { double(:broken_bike, working: false) }

  it "checks bikes to be fixed in Van is equal to the array of broken bikes from Docking Station" do
    broken_bikes = []
    10.times {broken_bikes << broken_bike}
    expect(subject.bikes_to_be_fixed).to eq broken_bikes

  end



end
