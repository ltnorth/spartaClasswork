class BudgetPage

  @@date_range = 'protect.budgetwatch:id/dateRange'
  @@add_budget = 'protect.budgetwatch:id/action_add'
  @@new_budget_name = 'protect.budgetwatch:id/budgetName'

  # expect(find_element(:id, 'protect.budgetwatch:id/budgetName').text).to eql('Rachel')

  def get_date_range
    $driver.find_element(:id, @@date_range)
  end

  def add_budget_button
    $driver.find_element(:id, @@add_budget)
  end

  def budget_name
    $driver.find_element(:id, @@new_budget_name)
  end
end