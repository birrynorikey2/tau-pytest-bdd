@retirement calculator
Feature: Retirement Calculator
  As a working citizen,
  I want to know when my retirement age is,
  So that I can plan for retiring.


  @get_retirement_age
  Scenario Outline: Get user birth year and calculate retirement age
    Given The year is "<year>" 
    When Birth "<year>" is between 1943 and 1954
    Then Retirement age should be "<correct>".

    Examples:
      | year  |  correct  |
      | 1943  |  [66,0]   |
      | 1944  |  [66,0]   |
      | 1945  |  [66,0]   |
      | 1946  |  [66,0]   |
      | 1947  |  [66,0]   |
      | 1948  |  [66,0]   |
      | 1949  |  [66,0]   |
      | 1950  |  [66,0]   |
      | 1951  |  [66,0]   |
      | 1952  |  [66,0]   |
      | 1953  |  [66,0]   |
      | 1954  |  [66,0]   |
