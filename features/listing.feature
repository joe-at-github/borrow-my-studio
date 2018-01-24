Feature: Listing

  Background:
    Given that a user exists
    Given that they are logged in
    Given an item exists

  Scenario: A user lists an item
    Given they are on the home page
    When they click list item
      And they fill out the details
      And they upload photos of the item
      And they click the create item button
    Then the item is saved to the database
      And they see a flash notice that confirms that they have listed an item
      And they are taken to the item page

  Scenario: A user edits an item
    Given that they are on the item page
    When they click on edit item
      And they edit the listing
      And they click on update item
    Then the item will be updated
      And they see a flash notice that confirms that they have edited the item    

