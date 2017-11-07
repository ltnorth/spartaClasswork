class Pages::BBCSignInPage < SitePrism::Page
  
  set_url "https://account.bbc.com/signin"
  set_url_matcher /account.bbc.com\/signin/

  element :username_input, "input[id='user-identifier-input']"
  element :password_input, "input[id='password-input']"
  element :sign_in_button, "button[id='submit-button']"

  def enter_username
    username_input.set 'r1702573@mvrht.net'
  end

  def enter_password
    password_input.set ENV['TEMP_PASSWORD']
  end

  def click_sign_in
    sign_in_button.click
  end
end