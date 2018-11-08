require "appium_lib"
require "cucumber"
require "rspec"
require_relative "../../lib/budget_app"

def opts
  {
    caps: {
      "platformName": "Android",
      "deviceName": "emulator-5554",
      "app": "/Users/tech-a51/Desktop/budgetwatch.apk"
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)
