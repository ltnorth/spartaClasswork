require 'spec_helper'
require 'date'

describe ParseJson do

  before(:each) do
    @file = ParseJson.new('json_example.json')
  end



  it "should contain the base as EUR" do
    expect(@file.base).to eql("EUR")
  end

  it "Should have a date string" do
    expect(@file.date).to be_instance_of Date
  end


  it "should countain 31 rates" do
    expect(@file.count_rates).to eql(31)
  end

  it "should all rates should be Floats" do
    expect(@file.floats?).to be true
  end

end