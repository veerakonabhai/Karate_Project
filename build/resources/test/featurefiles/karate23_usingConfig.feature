Feature: karate test suite 23
  reading global variables from karate config

  Scenario: karate config test case
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200
    * print response