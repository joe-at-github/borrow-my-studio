Feature: Messaging

  Background:  
    Given that a user exists
    Given they visit their account page
    When they fill out the account page with their details 
      And they upload an avatar photo
    Then they submit the account form
      And their account is saved 
    Given that they are logged in
    Given they are on the home page
    When they click list item
      And they fill out the details
      And they upload photos of the item
      And they click the create item button
    Then the item is saved to the database
    Then the user signs out

  
  Scenario: A user can message the lender
    Given that another user exists
      And they are on sign in page
    When they enter login details
      And they log in
    Then they redirect to the home page
    Given they visit the item page
    When they click message lender
      And they fill out the message form
      And they click send
    Then the message will be sent to the lender

    