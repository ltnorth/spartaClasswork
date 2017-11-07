require 'capybara/dsl'

class BBCSignInPage
  include Capybara::DSL

  USERNAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  SIGN_IN_BUTTON = 'submit-button'
  INVALID_PASSWORD_MESSAGE = '#form-message-password'

  def valid_username_input
    fill_in USERNAME_FIELD, with: 'liam.junk@outlook.com'
  end

  def invalid_password_input
    fill_in PASSWORD_FIELD, with: 'password'
  end

  def click_sign_in_button
    click_button SIGN_IN_BUTTON
  end

  def invalid_password?
    find(INVALID_PASSWORD_MESSAGE).visible?
  end
end