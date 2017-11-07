@image_upload

Feature: I can upload an image and post it on my Tumblr account

	Scenario: I can get to the image form
		Given I am on the dashboard
		When I click on photo icon
		Then I am on the photo form

	Scenario: I can put a url into the image form
		Given I am on the image form
		When I click on add photo from web and write a url
		Then The url has been put into the form