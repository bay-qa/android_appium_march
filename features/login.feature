Feature: Wikipedia Login
  @login
  Scenario: User able to login with valid credentials
    Given I land on Todays' featured article screen
    Then I press navigation menu icon
    Then I press on Log in to Wikipedia
    And I land on Login screen
    Then I type my username "Aleksskela"
    And I type my password "root1234"
    Then I press Log in button
    And I press navigation menu icon
    # I should see "Aleksskela" in login section
    # Press login button
    # Press logout
    # make sure we are logged out

  Scenario: User able to login with valid credentials
    Given I land on Todays' featured article screen
    Then I press navigation menu icon
    Then I press on Log in to Wikipedia
    And I land on Login screen
    Then I type my username "Aleksskela"
    And I type my password "root1234"
    Then I press Log in button
    And I press navigation menu icon
    #I should see "Aleksskela" in login


