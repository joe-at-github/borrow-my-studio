Feature: Searching

  Background: 
    Given that a user exists
    Given they visit their account page
    When they fill out the account page with their details 
      And they upload an avatar photo
    Then they submit the account form
      And their account is saved 
    Given that they are logged in
    Given they are on the home page
    Given there are some categories
    When they click list item
      And they fill out the details
      And they upload photos of the item
      And they click the create item button
    Then the item is saved to the database


  Scenario: A user searches for an item
    Given that a user is on the landing page
      And that they fill out the search bar
    When that they click enter
      Then the items they searched for should be visible

    