Feature: Confirm order after payment
    Scenario: Pay by check and confirm order
      When I open automationpractice website
      And I login with username "suhas290@gmail.com" and password "open4all"
      And I hover on women menu item and click summer dresses
      And I add a summer dress to cart
      And verify the item and price
      And I verify the address and proceed
      And I verify shipping address and proceed
      And I select payment method
      Then I confirm the order