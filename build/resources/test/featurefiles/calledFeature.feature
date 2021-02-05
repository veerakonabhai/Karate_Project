Feature: CalledFeature test suite
  CalledFeature from external file

  @rest
  Scenario: CalledFeature test case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method POST
    Then status 200
    * print responseHeaders
    * print responseType
    * print responseTime
    * print response
    * match responseType == "xml"
    * assert responseTime <= 1000
    * match response contains "104"
    * match response //string == 104