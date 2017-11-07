Feature: I am able to login as an existing user to Tumblr

	Scenario: I can get to the login page
		Given I am on the Tumblr homepage
		When I click on the login button
		Then I am redirected to the login page

	Scenario: I can log in
		Given I am on the login page
		When I fill in the relevant fields
		Then I am logged in

