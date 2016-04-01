@login
Feature: Wikipedia Login

  Background:
    Given I land on Today's featured article screen
    Given I press navigation menu icon
    Given I press on Log in to Wikipedia

  @production @sanity @aaa
  Scenario: User able to login with valid credentials
    And I land on Login screen
    Then I type my username "Aleksskela"
    And I type my password "root1234"
    Then I press Log in button
    And I press navigation menu icon
    Then I should see "Aleksskela" in log in section
    Then I press on Log in to Wikipedia
    Then I press Log out button
    When I press navigation menu icon
    Then I should see "Log in to Wikipedia" in log in section

  Scenario: User able to login with valid credentials
    And I land on Login screen
    Then I type my username "Aleksskela"
    And I type my password "root1234"
    Then I press Log in button
    And I press navigation menu icon
    Then I should see "Aleksskela" in log in section

  Scenario: Log in button should be disabled before user type credentials
    Then I type my username "Aleksskela"
    Then Log in button should be disabled

  Scenario Outline: User able to login with valid credentials
    And I land on Login screen
    Then I type my username "<user_name>"
    And I type my password "<password>"
    Then I press Log in button
    And I press navigation menu icon
    Then I should see "<account_name>" in log in section
    Then I press on Log in to Wikipedia
    Then I press Log out button
    When I press navigation menu icon
    Then I should see "Log in to Wikipedia" in log in section

    Examples:
    | user_name  | password  | account_name      |
    | Aleksskela | root1234  | Aleksei Petrovski |
    | Igor       | admin1234 | Igor Dorovskikh   |
    | Olga       | 12345     | Olga Ivanova      |







