Feature: Registration

  Scenario: A user provides a username and password when they sign up
    Given they are on the sign up page
    When they provide their credentials
      And they sign up
    Then they will be registered but not confirmed
    And they see a flash notice that confirms that they have signed up


  Scenario: A user logs into their account
    Given that a user exists
      And they are on the sign in page
    When they enter their login details
      And they log in
    Then they redirect to the home page
    And they see a flash notice that confirms that they are signed in