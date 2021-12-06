Feature: See company description

    Scenario: Read the description of a company 
        Given The company is registered on the platform
        When I want to see the company's description
        Then The description is displayed on the company's profile page