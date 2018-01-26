Feature: Listing

  Background:
    Given that a user exists
    Given that they are logged in
    
  Scenario: A user can message the lender
    Given that a user is logged in
      And they are on an item page
    When they click message lender
      And they fill out the message formm
      And they click send
    Then the message will be sent to the lender

    