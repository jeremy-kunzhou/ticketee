Feature: 
	In order to delete project
	As a user
	I should be able to delete project

	Background:
		Given there are the following users:
			|email|password|admin|
			|user@ticketee.com|password|true|
		And I am signed in as them

	Scenario: Delete Project
		Given there is a project called "TextMate 2"
		And "user@ticketee.com" has created a ticket for this project:
			|title|description|
			|Make it shiny!|Gradients! Starbursts! Oh my!|
		And I am on the homepage
		When I follow "TextMate 2"
		And I follow "Remove Project"
		Then I should see "Project has been deleted."
		Then I should not see "TextMate 2"
