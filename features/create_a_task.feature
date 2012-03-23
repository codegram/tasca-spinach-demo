Feature: Create a task
  In order to be able to complete my tasks
  As a user
  I must be able to create them first

  Scenario: Create a task
    Given I am on the task list
    When I add a new task
    Then I should see it on the pending list
