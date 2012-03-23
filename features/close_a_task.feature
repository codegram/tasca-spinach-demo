Feature: Close a task
  In order to move on to new tasks
  As a user
  I want to be able to close them

  Scenario: Close a task
    Given I have created a task on the past
    And I am on the tasks list
    When I close it
    Then it should no longer be on the pending list
    And I should see it on the closed list

  Scenario: See the date when a task is closed
    Given I have closed a task on the past
    When I am on the tasks list
    Then I should see the time when it was closed
