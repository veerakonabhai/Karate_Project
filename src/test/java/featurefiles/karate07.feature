Feature: karate test suite7
  validating Datatypes of variable

  Scenario: Datatype validation test case 1
    * def a = 10
    * def b = "Karate"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"