class BudgetsPage
  STANDARD_ID_STRING = "protect.budgetwatch:id/"
  VALID_BUDGET_NAME = "Danber"
  VALID_BUDGET_INPUT_VALUE = "1500"
  VALID_BUDGET_RETURN_VALUE = "0/1500"

  def checkDisplayedID element
    $driver.find_element(:id, STANDARD_ID_STRING + element).displayed?
  end

  def clickByID element
    $driver.find_element(:id, STANDARD_ID_STRING + element).click
  end

  def clickByAccessID element
    $driver.find_element(:accessibility_id, element).click
  end

  def sendValidBudgetName
    $driver.find_element(:id, STANDARD_ID_STRING + "budgetNameEdit").send_keys(VALID_BUDGET_NAME)
  end

  def sendValidBudgetValue
    $driver.find_element(:id, STANDARD_ID_STRING + "valueEdit").send_keys(VALID_BUDGET_INPUT_VALUE)
  end

  def budgetNameMatches
    if $driver.find_element(:id, "protect.budgetwatch:id/budgetName").text == VALID_BUDGET_NAME
      return true
    end
    return false
  end

  def budgetValueMatches
    if $driver.find_element(:id, "protect.budgetwatch:id/budgetValue").text == VALID_BUDGET_RETURN_VALUE
      return true
    end
    return false
  end
end
