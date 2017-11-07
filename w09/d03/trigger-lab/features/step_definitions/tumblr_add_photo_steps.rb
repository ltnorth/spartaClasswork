Given(/^I am logged in and am on the dashboard$/) do
	@tumblr_site = TumblrSite.new
	@tumblr_site.tumblr_homepage.visit_homepage
	@tumblr_site.tumblr_homepage.click_log_in
	@tumblr_site.tumblr_login.complete_email_field
	@tumblr_site.tumblr_login.click_next 
	@tumblr_site.tumblr_login.complete_password_field
	@tumblr_site.tumblr_login.click_next
end

When(/^I can post a picture$/) do
	@tumblr_site.tumblr_dashboard.click_photo
	@tumblr_site.tumblr_new_photo.click_add_photo
	@tumblr_site.tumblr_new_photo.enter_photo_url
	sleep 2
	@tumblr_site.tumblr_new_photo.add_photo
	sleep 2
end

# Then(/^The picture is at the top of my dashboard$/) do
	
# end