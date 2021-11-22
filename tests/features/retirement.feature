@retirement calculator
Feature: Retirement Calculator
  As a working citizen,
  I want to know when my retirement age is,
  So that I can plan for retiring.


  @getData
  Scenario Outline: Get user input into program
    Given The year and month are empty
    When Birth year and birth month are entered
    Then Birth date contains birth year and birth month as an array.

    Examples:
      | Birth year | Birth month | Birth date |
      | 1993       | 4           | [1993,4]   |
      | 1965       | 4           | [1955,4]   |
      | 2000       | 5           | [2000,5]   |


  @r_calc
  Scenario Outline: Calculate the retirement age including months
    Given the birth year and birth month are valid
    When retirement age is calculated
    Then The retirement age calculated based on year of birth is printed out
    And The retirement age with month is stored into birth date array
    
    
        Examples:
      | Birth year | Birth month |Age     | Plus    |   Birth date  |                  String                          |
      | 1993       | 4           |67      | 0       | [1993,4,67,0] | Your full retirement age is:  67                 |
      | 1955       | 4           |66      | 2       | [1955,4,66,2] | Your full retirement age is:  66  and  2  months |  
      | 2000       | 5           |67      | 0       | [2000,5,67,0] | Your full retirement age is:  67                 |
    
    
    
    
  @r_date
    Scenario Outline: Translate the retirement age into a retirement date
    Given the birth year ,birth month, age, and plus(months till retirement)
    When retirement age is translated
    Then The retirement date should be printed as a string

        Examples:
      |   Birth date  |         Retirement date       |
      | [1993,4,67,0] | This will be in April of 2060 |
      | [1955,4,66,2] | This will be in June of 2021  |
      | [2000,5,67,0] | This will be in May of 2067   |
