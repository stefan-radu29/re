Feature: See available internship offers

    Scenario: All internship offers that are available are displayed
        Given There are available internship offers
        When I want to see all of the available internship offers
        Then The available internship offers are all displayed

    Scenario: If an internship offer is no longer available it is not displayed
        Given The internship offer is no longer available
        When I want to see all of the available internship offers
        Then The unavailable internship is not displayed to the user