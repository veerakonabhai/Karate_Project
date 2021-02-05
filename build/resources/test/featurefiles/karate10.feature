Feature: karate test suite10
  validating JSON output of REST API with  GET method

  @rest
  Scenario: REST API test case 1
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"

  @rest
  Scenario: REST API test case 2
    Given url "http://dummy.restapiexample.com"
    And path "/api/v1/employees"
    When method get
    Then status 200
    * match responseType == "json"
    * match response.status == "success"
    * match response.data[0].employee_name == "Tiger Nixon"
    * match response.status == "#string"