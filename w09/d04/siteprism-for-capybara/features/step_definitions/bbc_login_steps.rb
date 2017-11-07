Given(/^I can access the BBC home page$/) do
  @bbc_site = BBCSite.new
  @bbc_site.bbc_homepage.load
  @bbc_site.bbc_homepage.displayed?
end

And(/^I am able to select sign in$/) do
  expect(@bbc_site.bbc_homepage).to have_sign_in_link
  @bbc_site.bbc_homepage.click_sign_in_link
end

When(/^I enter my login details$/) do
  @bbc_site = BBCSite.new
  @bbc_site.bbc_sign_in_page.enter_username
  @bbc_site.bbc_sign_in_page.enter_password
end

And(/^I click sign in$/) do
  @bbc_site.bbc_sign_in_page.click_sign_in
end

Then(/^I have been signed in$/) do
  @bbc_site = BBCSite.new
  expect(current_path).to eql("/")
  expect(@bbc_site.bbc_homepage.get_sign_in_link_text).to eql("Your account")
end