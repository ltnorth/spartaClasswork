require 'spec_helper'

describe "Testing the budget app" do
  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  it "should open the budgetwatch app" do
    expect(find_element(:id, 'protect.budgetwatch:id/action_settings').displayed?).to be true
  end

  it "should open budgets" do
    text('Budgets').click
    expect(find_element(:id, 'protect.budgetwatch:id/dateRange').displayed?).to be true
  end

  it "should be able to add a budget" do
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').send_keys('Rachel')
    find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys('5000')
    find_element(:id, 'protect.budgetwatch:id/action_save').click
    expect(find_element(:id, 'protect.budgetwatch:id/budgetName').text).to eql('Rachel')
  end

  it "should navigate back to the home screen when on the budget page" do
    first_button.click
    expect(find_element(:id, 'protect.budgetwatch:id/action_settings').displayed?).to be true
  end

  it "should open the transactions page when on the home screen" do
    text('Transactions').click
    expect(text('EXPENSES').displayed?).to be true
  end

  it "should be able to add a transaction" do
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/nameEdit').send_keys('Lambo')
    expect(find_element(:id, 'protect.budgetwatch:id/budgetSpinner').value).to eql('Rachel')
    find_element(:id, 'protect.budgetwatch:id/accountEdit').send_keys('Debit')
    find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys('200000')
    find_element(:id, 'protect.budgetwatch:id/noteEdit').send_keys("My husbando's lamborghini")
    find_element(:id, 'protect.budgetwatch:id/action_save').click
  end




  after(:all) do
    @driver.driver_quit
  end
end