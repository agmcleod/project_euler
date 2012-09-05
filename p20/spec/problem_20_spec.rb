require 'rspec'
require './problem_20'

include Problem20

describe Problem20 do
  describe "#factorial" do
    it "for 10, it should return 3628800" do
      Problem20::factorial(10).should == 3628800
    end
  end

  describe "#sum_of_factorial" do
    it "for 10, it should return 27" do
      Problem20::sum_of_factorial(3628800).should == 27
    end
  end
end