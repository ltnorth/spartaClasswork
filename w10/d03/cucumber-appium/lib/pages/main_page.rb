class MainPage
  
  @@budget_and_transaction = 'protect.budgetwatch:id/action_settings'
  @@budget_or_transaction = 'protect.budgetwatch:id/menu'

  def main_page_displayed?
    $driver.find_element(:id, @@budget_and_transaction).displayed?
  end

  def budget_selection
    $driver.find_elements(:id, @@budget_or_transaction)[0]
  end

  def transaction_selection
    $driver.find_elements(:id, @@budget_or_transaction)[1]
  end
end