Given(/^I am on the homepage$/) do
	@tumblr_site = TumblrSite.new
	@tumblr_site.tumblr_homepage.visit_homepage
end

When(/^I fill in my credentials and click login$/) do
	@tumblr_site.tumblr_homepage.click_log_in
	@tumblr_site.tumblr_login.complete_email_field
	@tumblr_site.tumblr_login.click_next 
	@tumblr_site.tumblr_login.complete_password_field
	@tumblr_site.tumblr_login.click_next
end

Then(/^I am logged in and can see my dashboard$/) do
	expect(current_path).to eql('/dashboard')
end