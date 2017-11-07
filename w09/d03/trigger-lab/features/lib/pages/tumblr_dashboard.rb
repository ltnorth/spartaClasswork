require 'capybara/dsl'

class TumblrDashboard

  include Capybara::DSL

  PHOTOBUTTON = "new_post_label_photo"

  def visit_dashboard
    visit('/dashboard')
  end

  def click_photo
    find_link(PHOTOBUTTON).click
  end

end