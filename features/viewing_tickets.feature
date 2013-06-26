Feature:
	In order to see the tickets belongs to some project
	As a user
	I want to be able to check the tickets of some project

	Background:
		Given there are the following users:
			|email|password|
			|user@ticketee.com|password|
		And there is a project called "TextMate 2"
		And "user@ticketee.com" has created a ticket for this project:
			|title|description|
			|Make it shiny!|Gradients! Starbursts! Oh my!|
		And there is a project called "Internet Explorer"
		And "user@ticketee.com" has created a ticket for this project:
			|title|description|
			|Standards compliance|Isn't a joke.|
		And I am on the homepage

	Scenario: Viewing Tickets for a given project
		When I follow "TextMate 2"
		Then I should see "Make it shiny!"
		And I should not see "Standards compliance"
		When I follow "Make it shiny!"
		Then I should see "Gradients! Starbursts! Oh my!"

		When I follow "Ticketee"
		And I follow "Internet Explorer"
		Then I should see "Standards compliance"
		And I should not see "Make it shiny!"
		When I follow "Standards compliance"
		Then I should see "Isn't a joke."
		
