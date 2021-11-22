@retirement calculator
Feature: Retirement Calculator
  As a working citizen,
  I want to know when my retirement age is,
  So that I can plan for retiring.


  @get_retirement_age1
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

  Scenario Outline: Get user birth year and calculate retirement age
    Given The birth year is "<year>"
    When Birth "<year>" is between 1937 and 1942 inclusive
    Then Retirement age should be "<correct>".
    
        Examples:
      | year  |  correct  |
      | 1937  |  [65,0]   |
      | 1938  |  [65,2]   |
      | 1939  |  [65,4]   |
      | 1940  |  [65,6]   |
      | 1941  |  [65,8]   |
      | 1942  |  [65,10]  |


  Scenario Outline: Get user birth year and calculate retirement age
    Given The birth year is "<year>"
    When Birth "<year>" is between 1955 and 1959 inclusive
    Then Retirement age should be "<correct>".
    
        Examples:
      | year  |  correct  |
      | 1955  |  [65,2]   |
      | 1956  |  [65,4]   |
      | 1957  |  [65,6]   |
      | 1958  |  [65,8]   |
      | 1959  |  [65,10]  |
      
      
      
      
  @_validate_birth_year
  Scenario Outline: Get user birth year and checks it's validity
    Given The birth year 3001
    When birth year is greater than 3000
    Then value error message should be raised
    
    
    

  Scenario Outline: Get user birth year and checks it's validity
    Given The birth year 10
    When birth year is less than 1900
    Then value error message should be raised
    
    
    
    
   @get_retirement_age(birth_year, birth_month, age_years, age_months)
   
   Scenario Outline: Get user birth year and birth month then calculates retirement age
    Given The birth year 1990
    When birth month is 4
    Then retirement age should be 2057, April
    
    
    
   Scenario Outline: Get user birth year and birth month then calculates retirement age
    Given The birth year 1967
    When birth month is 2
    Then retirement age should be 2034, February
    
    
   Scenario Outline: Get user birth year and birth month then calculates retirement age
    Given The birth year 1937
    When birth month is 1
    Then retirement age should be 2002, January
    
    
   Scenario Outline: Get user birth year and birth month then calculates retirement age
    Given The birth year 1944
    When birth month is 3
    Then retirement age should be 2010, March
    
    
   Scenario Outline: Get user birth year and birth month then calculates retirement age
    Given The birth year 1990
    When birth month is 4
    Then retirement age should be 2057, April
    
    
    
    
    
 



