require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
  end

  it "no price should be more than £10" do
    prices = @xml_menu.search('price')
    is_it_true = true
    prices.each do |price|
      price.content.slice!(0)
      is_it_true = false if price.to_f > 10
    end
    expect(is_it_true).to be true
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    foods = @xml_menu.search('food')
    is_it_true = true
    foods.each do |food|
      calories = food.element_children[3].content.to_i
      name = food.element_children[0].content
      is_it_true = false if calories > 1000 unless name == "Full Breakfast"
    end
    expect(is_it_true).to be true
  end

  it "should have all waffle dishes stating you get two waffles" do
    foods = @xml_menu.search('food')
    is_it_true = false
    foods.each do |food|
      name = food.element_children[0].content.downcase
      description = food.element_children[2].content
      is_it_true = true if name.count("waffles") >= 1 && description.count("Two") >= 1
    end
    expect(is_it_true).to be true
  end


end