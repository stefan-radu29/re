Feature: Upload CV to profile

    Scenario: The CV upload button is displayed because the user is logged in
        Given I am logged in
        When I want to upload my CV 
        Then I can access my profile and upload my CV

    Scenario: The CV upload button is not displayed because the user is not logged in
        Given I am not logged in
        When I would like to upload my CV
        Then I cannot access my profile in order to upload the CV

    Scenario: CV is successfully uploaded
        Given I am logged in
        When I try to upload a CV which is a PDF and which is smaller than 2 MB
        Then The CV is saved and displayed on my profile

    Scenario: CV cannot be uploaded because of invalid format
        Given I am logged in
        When I try to upload a CV which is not a PDF
        Then The CV is not saved and I get an error message

    Scenario: CV cannot be uploaded because the file is too large
        Given I am logged in
        When I try to upload a CV which is larger than 2 MB
        Then The CV is not saved and I get an error message