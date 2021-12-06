Feature: Have a personal user account for logging into the application

    Scenario: Register as a user with valid credentials
        Given I used valid information on the register page
        When I want to register
        Then My account is created

    Scenario: Try to register as a user with invalid credentials
        Given I used invalid information on the register page
        When I want to register
        Then My account is not created and I receive an error message

    Scenario: Log in using valid credentials
        Given I am not logged in and I have valid credentials for an existing account
        When I want to log in
        Then I am logged in

    Scenario: Try to log in using invalid credentials
        Given I am not logged in and I have invalid credentials
        When I want to log in
        Then I am not logged in and I receive an error message

    Scenario: Log out
        Given I am logged in
        When I want to log out
        Then I am not logged in anymore