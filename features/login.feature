Feature: Wikipedia Login
  @login
  Scenario: User able to login with valid credentials
    Given I land on Today's featured article screen
    Then I press navigation menu icon
    Then I press on Log in to Wikipedia
    And I land on Login screen
    Then I type my username "Aleksskela"
    And I type my password "root1234"
    Then I press Log in button
    And I press navigation menu icon
    Then I should see "Aleksskela" in log in section
    Then I press on Log in to Wikipedia
    Then I press Log out button
    Then I press navigation menu icon
    Then I should see "Log in to Wikipedia" in log in section

  Scenario: User able to login with valid credentials
    Given I land on Today's featured article screen
    Then I press navigation menu icon
    Then I press on Log in to Wikipedia
    And I land on Login screen
    Then I type my username "Aleksskela"
    And I type my password "root1234"
    Then I press Log in button
    And I press navigation menu icon
    Then I should see "Aleksskela" in log in section


