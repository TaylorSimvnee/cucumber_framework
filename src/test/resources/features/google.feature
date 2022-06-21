@Google
  #Each feature file must have a feature name
  #To declare all scenarios in feature file as a tag name we put the tag at the top of the file ^^
Feature: Google Search Functionality

  @Regression @Integration
  Scenario: Validate Google Search
    Given user navigates to "https://www.google.com/"
    When user searches for "Tesla" on Google
    Then user should see "Tesla" in the url
    And user should see "Tesla" in the title

  @Smoke @Functional
  Scenario: Validate Google Search Results
    Given user navigates to "https://www.google.com/"
    When user searches for "Apple" on Google
    Then user should see results are more than 0