require 'DockingStation'

describe Bike do

  it { is_expected.to respond_to :working? }

  it "Checks to see if bike instance responds to report method" do
    is_expected.to respond_to :report
  end

end
