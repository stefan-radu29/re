Feature: Chat

    Scenario: The chat is displayed because the user is logged in
        Given I am logged in
        When I want to send a message in the chat
        Then I can access the chat

    Scenario: The chat is not displayed because the user is not logged in
        Given I am not logged in
        When I would like to send a message in the chat
        Then I cannot access the chat

    Scenario: Message is successfully sent in the chat
        Given I have successfully logged in
        When I send a message in the chat
        Then The message is received by the other person in the chat