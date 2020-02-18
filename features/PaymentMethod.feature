Feature: Payment method

    Scenario: Verify shipping address and pay by check
    When I open automationpractice website
    And I login with username "suhas290@gmail.com" and password "open4all"
    And I hover on women menu item and click summer dresses
    And I add a summer dress to cart
    And verify the item and price
    And I verify the address and proceed
    And I verify shipping address and proceed
    Then I select payment method