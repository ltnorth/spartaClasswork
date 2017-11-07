require 'capybara/dsl'

class TumblrHomepage
  include Capybara::DSL
  
  LOG_IN_BUTTON = "signup_login_button"

  def visit_homepage
    visit('/')
  end

  def click_log_in
    click_button LOG_IN_BUTTON
  end
end