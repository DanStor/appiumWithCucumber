require_relative "pages/homepage"
require_relative "pages/budgetsPage"

module BudgetApp
  def homepage
    HomePage.new
  end

  def budgetsPage
    BudgetsPage.new
  end

end
