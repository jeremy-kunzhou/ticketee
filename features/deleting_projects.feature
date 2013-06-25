Feature: 
	In order to delete project
	As a user
	I should be able to delete project

	Scenario: Delete Project
		Given there is a project called "TextMate 2"
		And I am on the homepage
		When I follow "TextMate 2"
		And I follow "Remove Project"
		Then I should see "Project has been deleted."
		Then I should not see "TextMate 2"
