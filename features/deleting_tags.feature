Feature: Deleting tags
	In order to remove old tags
	As a user
	I want to click a button and make them go away

	Background:
		Given there are the following users:
			|email|password|
			|user@ticketee.com|password|
		And I am signed in as them
		And there is a project called "TicketeeBeta"
		And "user@ticketee.com" can view the "TicketeeBeta" project
		And "user@ticketee.com" can tag the "TicketeeBeta" project 
		And "user@ticketee.com" has created a ticket for this project:
			|title|description|tags|
			|A tag|Tagging a ticket!|this-tag-must-die|
		Given I am on the homepage
		When I follow "Ticketee" within "#projects"
		And I follow "A tag"

	@javascript
	Scenario: Deleting a tag
		And show me the page
		When I follow "delete-this-tag-must-die"
		Then I should not see "this-tag-must-die"
