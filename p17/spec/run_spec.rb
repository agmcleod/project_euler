$:.unshift(File.join(File.expand_path(__FILE__), '../..'))
require 'calculate.rb'
include Calculate
describe "count_characters" do
  before do
    @keys = {}
    IO.read('keys.txt').split(/\n/).each do |n|
      vals = n.split(',')
      @keys[vals[0]] = vals[1]
    end
  end

  it "should count 39 characters for the range 1..10" do
    total = 0
    10.times do |i|
      total += count_characters(i+1, @keys)
    end
    total.should == 39
  end

  it "should count 19 for 1..5" do
    total = 0
    5.times do |i|
      total += count_characters(i+1, @keys)
    end
    total.should == 19
  end

  it "should count x for 23" do
    total = 0
    23.times do |i|
      total += count_characters(i+1, @keys)
    end
    total.should == 141
  end
end