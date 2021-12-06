Feature: Save internship offers

    Scenario: The option to save an internship offer is available because the user is logged in
        Given I am logged in
        When I want to save an internship offer to favorites
        Then The internship is saved to my favorites

    Scenario: The option to save an internship offer is not available for a user who is not logged in
        Given I am not logged in
        When I want to save an internship offer to favorites
        Then I receive a message saying I have to be logged in, in order to save to favorites