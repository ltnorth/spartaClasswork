class EnterBudgetPage

  @@type_name = 'protect.budgetwatch:id/budgetNameEdit'
  @@type_value = 'protect.budgetwatch:id/valueEdit'
  @@save_budget_button = 'protect.budgetwatch:id/action_save'
  
  def enter_name_field
    $driver.find_element(:id, @@type_name).send_keys('Rachel')
  end

  def enter_value_field
    $driver.find_element(:id, @@type_value).send_keys('5000')
  end

  def save_budget
    $driver.find_element(:id, @@save_budget_button).click
  end
end