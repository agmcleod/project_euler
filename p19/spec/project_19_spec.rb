require 'rspec'
require './project_19'
require 'active_support/all'

describe "Project19" do
  include Project19
  
  describe "#is_sunday?" do
    it "should be true when setting the datetime to sunday" do
      is_sunday?(Date.new.sunday).should be_true
    end
  end

  describe "#first_day_of_each_month" do
    it "for one year, it should return an array of 12" do
      first_day_of_each_month(1900).size.should == 12
    end

    it "the first element should be a Date" do
      first_day_of_each_month(1900).first.is_a?(Date).should be_true
    end
  end

  describe "#get_first_sundays_of_a_year" do
    it "for 1900, it should return 2" do
      get_first_sundays_of_a_year(1900).should == 2
    end
  end
end