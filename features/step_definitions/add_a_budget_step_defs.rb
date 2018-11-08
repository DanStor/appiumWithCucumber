Given("I can open the app") do
  expect($driver.find_element(:id, "protect.budgetwatch:id/toolbar").displayed?).to eq true
  expect($driver.find_element(:id, "protect.budgetwatch:id/list").displayed?).to eq true
end

When("I click on budgets") do
  $driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].click
end

Then("I see my budgets") do
  expect($driver.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?).to eq true
  expect($driver.find_element(:id, "protect.budgetwatch:id/action_add").displayed?).to eq true
  expect($driver.find_element(:id, "protect.budgetwatch:id/dateRange").displayed?).to eq true
end

When("I create a new budget") do
  $driver.find_element(:accessibility_id, "Add").click
end

When("I add a name and value") do
  $driver.find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys("Danber")
  $driver.find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys("1500")
  $driver.find_element(:accessibility_id, "Save").click
end

Then("The new budget page opens") do
  expect($driver.find_element(:id, "protect.budgetwatch:id/budgetName").displayed?).to eq true
  expect($driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[0].text).to eq "Danber"
  expect($driver.find_element(:id, "protect.budgetwatch:id/budgetValue").text).to eq "0/1500"
end
