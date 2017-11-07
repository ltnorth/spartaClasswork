Feature: I am able to post a picture

	Scenario: I can log in as an existing user on the homepage
		Given I am on the homepage
		When I fill in my credentials and click login
		Then I am logged in and can see my dashboard

	Scenario: I can post a picture
		Given I am logged in and am on the dashboard
		When I can post a picture
		Then The picture is at the top of my dashboard