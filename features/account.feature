Feature: Account

  Background: A user is logged in
    Given that a user exists
      And that they are logged in
    

  Scenario: A user enters their account information
    Given they visit their account page
    When they fill out the account page with their details 
      And they upload an avatar photo
    Then they submit the account form
      And their account is saved
      And they see a notification
      And that they are on their account page
      And their personal info should be visible
    Given they have edited the content
    When they submit the update account form
      And the account is updated
    Then they see a flash notice informing them that their record is updated


  

