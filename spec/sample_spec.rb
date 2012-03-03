require File.expand_path(File.join('.', 'spec_helper'), File.dirname(__FILE__))
require "sample"
describe Sample, "when mix two numbers" do
  before do
    @sample = Sample.new
  end

  it "should calculate as +" do
    @sample.mix(1, 1).should == 2
    @sample.mix(1, 100).should == 101
    @sample.mix(1, -100).should == -99
  end

  after do
    @sample = nil
  end
end