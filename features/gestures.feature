@gestures
Feature: learning gestures

  Scenario: As Wikipedia user, I can scroll down until Overview section
    Given I land on Today's featured article screen
    When I press on Search textfield
    Then I type "test automation" into search field
    Then I see that 1st search result include "test automation"
    When I press on 1st search result on search result screen
    And I verify that article contains "test automation"
    Then I scroll down until I "Unit testing" is displayed

  Scenario: As Wikipedia user, I can scroll down until Overview section
    Given I land on Today's featured article screen
    When I swipe screen to the right direction
    Then I should see Navigation menu
    When I swipe screen to the left direction
    Then I should not see Navigation menu