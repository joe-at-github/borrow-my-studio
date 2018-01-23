Feature: Account

  Scenario: A user enters their account information
    Given that a user exists
      And that they are logged in
      And they visit their account page
    When they fill out the account page with their details 
      And they upload an avatar photo
    Then they submit the account form
      And their account is saved
      And they see a notification
    Given that they are on their account page
    Then their personal info should be visible


  Scenario: A user edits their account information
    Given the user is on the account page just created
      And that the user clicks on edit details
      And they have edited the content
    When they submit the update account form
    Then the account page is updated
      And updated account is visible
      And they see a flash notice informing that their record is updated

