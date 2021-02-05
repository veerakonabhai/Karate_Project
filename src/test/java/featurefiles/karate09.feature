Feature: karate test suite9
  reading the payloadata from external xml file

  @soap
  Scenario: Soap Webservice test case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request read("soapinputdata.xml")
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    * print responseHeaders
    * print responseHeaders["Server"]
    * print responseHeaders["Server"][0]
    * print responseHeaders["Server"] == ["Microsoft-IIS/7.5"]
    * print responseHeaders["Server"][0] == "Microsoft-IIS/7.5"
    * print responseType
    * match responseType == "xml"
    * print response
    * match response contains "98.6"
    * match response //CelsiusToFahrenheitResult == 98.6
    * print responseTime
    * assert responseTime <= 2000
    * print responseStatus