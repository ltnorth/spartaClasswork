class LoginHelper
	def self.login
		user = {
			email: "egghead@hotmail.com",
			password: "onionboy1"
		}
		@tumblr_site = TumblrSite.new
		@tumblr_site.tumblr_login_page.visit_login_page
		@tumblr_site.tumblr_login_page.fill_email_field(user[:email])
		@tumblr_site.tumblr_login_page.click_next
		@tumblr_site.tumblr_login_page.fill_password_field(user[:password])
		@tumblr_site.tumblr_login_page.click_login
	end

	def self.logout
		@tumblr_site = TumblrSite.new
		@tumblr_site.tumblr_dashboard.visit_dashboard
		@tumblr_site.tumblr_dashboard.click_account_button
		@tumblr_site.tumblr_dashboard.click_logout_button
		@tumblr_site.tumblr_dashboard.click_logout_confirmation
	end

end