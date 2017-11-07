require 'capybara/dsl'

class TumblrLogin

  include Capybara::DSL

  EMAILFIELD = "signup_determine_email"
  NEXTBUTTON = "signup_forms_submit"
  PASSWORDFIELD = "signup_password"

  def complete_email_field
    fill_in EMAILFIELD, with: "r1583225@mvrht.net"
  end

  def complete_password_field
    fill_in PASSWORDFIELD, with: "OnionBoy"
  end

  def click_next
    click_button NEXTBUTTON
  end
end