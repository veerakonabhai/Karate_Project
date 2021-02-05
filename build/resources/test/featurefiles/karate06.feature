Feature: karate test suite6
  using logical operator && in validation

  Scenario: logical operator && test case 1
    * def a = 10
    * def b = 20
    * assert a == 10 && b == 20
    * print "after assert"