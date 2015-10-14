=begin
require 'garage'

describe Garage do

  it "checks delivered bikes are broken" do
    subject.broken_bikes.all? {|bikes| bikes.working == false}
  end

end
=end
