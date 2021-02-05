Feature: karate test suite1
  this is the first suite file

  Scenario: karate test case 1
    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "c = ",c
    And karate.log("end of log")


  Scenario: karate test case 2
    Given def a = 10
    * def b = 20
    When def c = a + b
    Then assert c == 30
    * print "c = ",c
    * karate.log("end of log")

  Scenario: karate test case 2
    * def a = 10
    * def b = 20
    * def c = a + b
    * assert c == 30
    * print "c = ",c
    * karate.log("end of log")