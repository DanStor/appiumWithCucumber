Given("I can open the app") do
  expect(homepage.checkDisplayedID("toolbar")).to eq true
  expect(homepage.checkDisplayedID("list")).to eq true
end

When("I click on budgets") do
  homepage.clickByID("menu")
end

Then("I see my budgets") do
  expect(budgetsPage.checkDisplayedID("action_calendar")).to eq true
  expect(budgetsPage.checkDisplayedID("action_add")).to eq true
  expect(budgetsPage.checkDisplayedID("dateRange")).to eq true
end

When("I create a new budget") do
  budgetsPage.clickByAccessID("Add")
end

When("I add a name and value") do
  budgetsPage.sendValidBudgetName
  budgetsPage.sendValidBudgetValue
  budgetsPage.clickByAccessID("Save")
end

Then("The new budget page opens") do
  expect(budgetsPage.checkDisplayedID("budgetName")).to eq true
  expect(budgetsPage.budgetNameMatches).to eq true
  expect(budgetsPage.budgetValueMatches).to eq true
  # expect($driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[0].text).to eq "Danber"
  # expect($driver.find_element(:id, "protect.budgetwatch:id/budgetValue").text).to eq "0/1500"
end
