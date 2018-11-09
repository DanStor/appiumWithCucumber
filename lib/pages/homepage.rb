class HomePage
  def checkDisplayedID element
    $driver.find_element(:id, "protect.budgetwatch:id/" + element).displayed?
  end

  def clickByID element
    $driver.find_element(:id, "protect.budgetwatch:id/" + element).click
  end
end
