Feature: Listing

  Background:
    Given that a user exists
    Given that they are logged in
    Given they visit their account page
    When they fill out the account page with their details 
      And they upload an avatar photo
    Then they submit the account form
      And their account is saved

  Scenario: A user lists an item
    Given there are some categories
    Given they are on the home page
    When they click list item
      And they fill out the details
      And they upload photos of the item
      And they click the create item button
      And they are taken to the item page
      And they see a flash notice that confirms that they have listed an item
    Then the item is saved to the database     
    When they click on edit listing
      And they edit the listing
      And they click on update item
    Then the item will be updated
      And they see a flash notice that confirms that they have edited the item    

