Feature: Login to portal

  Scenario: Login and logout
    When I open automationpractice website
    And I login with username "suhas290@gmail.com" and password "open4all"
    Then I verify that I successfully logged in by logging out
