Feature: karate test suite4
  Validating SOAP API content

  @soap
  Scenario: SOAP API test case 1
    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request
    """
    <?xml version="1.0" encoding="utf-8"?>
    <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
      <soap:Body>
        <CelsiusToFahrenheit xmlns="https://www.w3schools.com/xml/">
          <Celsius>37</Celsius>
        </CelsiusToFahrenheit>
      </soap:Body>
    </soap:Envelope>
    """
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

  @soap
  Scenario: SOAP API test case 2
    Given url "http://www.dneonline.com/calculator.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request
    """
    <?xml version="1.0" encoding="utf-8"?>
    <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
      <soap:Body>
        <Add xmlns="http://tempuri.org/">
          <intA>1</intA>
           <intB>2</intB>
        </Add>
      </soap:Body>
    </soap:Envelope>
    """
    When soap action "http://tempuri.org/Add"
    Then status 200
    * print responseHeaders
    * print responseHeaders["Server"]
    * print responseHeaders["Server"][0]
    * print responseHeaders["Server"] == ["Microsoft-IIS/8.0"]
    * print responseHeaders["Server"][0] == "Microsoft-IIS/8.0"
    * print responseType
    #* match responseType == "xml"
    * print response
    #* match response contains "98.6"
    * match response //AddResult == 3
    * print responseTime
    #* assert responseTime <= 2000
    * print responseStatus