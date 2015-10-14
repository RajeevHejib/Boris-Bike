require 'DockingStation'

describe Bike do

  it { is_expected.to respond_to :working }

  it "checks to see if new instance is always true" do
    expect(Bike.new.working).to eq true
  end


  it "Checks to see if bike instance responds to report method" do
    is_expected.to respond_to :report
  end

end
