require "appium_lib"
require "cucumber"
require "rspec"
require_relative "../../lib/budget_app"

def opts
  {
    caps: {
      "platformName": "Android",
      "deviceName": "emulator-5554",
      "app": "app/budgetwatch.apk"
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)
