Feature: See/Add internship reviews

    Scenario: Add a review for a completed internship
        Given I am logged in
        Given I have completed an internship that is on the platform
        When I want to write a review for this internship
        Then The review is posted on the internship page

    Scenario: See the reviews for an internship
        Given The internship exists on the platform
        When I want to see the reviews for the internship
        Then I can see all the reviews on the page corresponding to the internship