# event_store_userID.feature

Feature: event stores user ID
	In order to be identified as the author of an event
	As a user of the AAA website
	I want a new event to automatically record my ID

	Scenario: event stores my ID
		Given a new event
		When I request the author of the event
		Then I should see "Shuo Zhang"