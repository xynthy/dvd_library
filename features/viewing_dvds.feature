Feature: Viewing the dvds in library

	Scenario: No DVDs in library
		Given there are no DVDs in library
		When I go to the DVDs display page
		Then I should see that there are no DVDs

	Scenario: Some DVDs in library
		Given there are some DVDs in library
		When I go to the DVDs display page
		Then I should see the DVDs titles and case location
