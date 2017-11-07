require 'capybara/dsl'
class TumblrDashboard
	include Capybara::DSL

	@@dashboard_url = '/dashboard'

	@@photo_icon = '#new_post_label_photo'
	@@account_button = '#account_button'
	@@logout_button = '#logout_button'

	def url
		current_url
	end

	def click_photo_icon
		find(@@photo_icon).click
	end

	def visit_dashboard
		visit(@@dashboard_url)
	end

	def click_account_button
		find(@@account_button).click
	end

	def click_logout_button
		find(@@logout_button).click
	end

	def click_logout_confirmation
		find('span', text: 'OK').click
	end

end