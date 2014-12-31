Feature: User can sign up and log in
	So that users can create accounts
	And make blog streams
	And make using the site worth their time
	
	Scenario: A new user signs up and a new User is created. 
		Given I visit the home page
		And I click the "Sign Up!" link
		Then a "sign up" modal should appear
		When I enter "wonderwoman@themyscira.gov" for "Your Email Address"
		And I enter "grrlpower" for "Signup Password"
		And I enter "grrlpower" for "Confirm Password"
		Then I click the "Sign Up" button
		And a user is created

	Scenario: An existing user logs in.
		Given a user "wonderwoman@themyscira.gov" with password "grrlpower"
		Given I visit the home page
		And I click the "Log in" button
		Then a "login" modal should appear
		When I enter "wonderwoman@themyscira.gov" for "Email Address"
		And I enter "grrlpower" for "Login Password"
		Then I click the "Login" button
		When I wait "5" seconds
		And Log out appears in the navbar
