require 'appium_lib'
require 'cucumber'
require 'pry'
require 'require_all'
require_relative '../../lib/budget_app'

def opts
  {
   caps: {
      platformName: "Android",
      deviceName: "emulator-5554",
      app: "/Users/tech-a54/Development/classwork/w10/d03/cucumber-appium/lib/budgetwatch.apk"
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)