Feature: Karate test suite16
  writing response to external file

  Scenario: writing response test case 1
    * def util = Java.type("misc.utils")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    * def res = get response
    #* def res = get response $.data[0].email
    * print res
    * util.writeToFile("result1.json",res)

  Scenario: reading result file
    * def data = read("classpath:result1.json")
    * print data