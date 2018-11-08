Feature: I am able to add a budget
  As a user
  I want to add a budget
  So that I can track my budgets

  Scenario: I am able to view my budgets
    Given I can open the app
    When I click on budgets
    Then I see my budgets

  Scenario: I am able to create a budget
    Given I can open the app
    When I click on budgets
    And I create a new budget
    And I add a name and value
    Then The new budget page opens
