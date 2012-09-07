require 'rubygems'
require 'rspec'
require 'p21'


describe P21 do
  subject { @p21 = P21.new(divisor) }

  describe "#get_divisors" do
    context "size" do
      subject { @p21 = P21.new(divisor).get_divisors }
      let(:divisor) { 220 }
      its(:size) { should == 11 }  
    end
  end
end
