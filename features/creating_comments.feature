Feature: Creating comments
	In order to update a ticket's progress
	As a user
	I want to leave comments

	Background:
		Given there are the following users:
			|email|password|
			|user@ticketee.com|password|
		And I am signed in as them
		And there is a project called "TicketeeBeta"
		And "user@ticketee.com" can view the "TicketeeBeta" project
		And "user@ticketee.com" has created a ticket for this project:
			|title|description|
			|Change a ticket's state|You should be able to create a comment|
		Given there is a state called "Open"
		Given I am on the homepage
		And I follow "TicketeeBeta"

	Scenario: Creating a comment
		Then show me the page
		When I follow "Change a ticket's state"
		And I fill in "Text" with "Added a comment"
		And I press "Create Comment"
		Then I should see "Comment has been created."

	Scenario: Creating an invalid comment
		When I follow "Change a ticket's state"
		And I press "Create Comment"
		Then I should see "Comment has not been created."
		And I should see "Text can't be blank"

	Scenario: Changing a ticket's state
		When I follow "Change a ticket's state"
		When I fill in "Text" with "This is a real issus"
		And I select "Open" from "State"
    And I press "Create Comment"
    Then I should see "Comment has been created."
  #  And I should see "Open" within "#ticket .state"
  #  Then I should see "State: Open" within "#comments"
