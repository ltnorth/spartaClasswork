Given(/^I am on the dashboard$/) do
	@tumblr_site = TumblrSite.new
	@tumblr_site.tumblr_dashboard.visit_dashboard
end

When (/^I click on photo icon$/) do
	@tumblr_site.tumblr_dashboard.click_photo_icon
end

Then (/^I am on the photo form$/) do
	expect(@tumblr_site.tumblr_dashboard.url).to eql ('https://www.tumblr.com/new/photo')
end