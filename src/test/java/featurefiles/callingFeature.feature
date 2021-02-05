Feature: CallingFeature test suite
  CallingFeature from external file

  @rest
  Scenario: CallingFeature test case 1
    * def result = call read("calledFeature.feature")
    * print result
    * assert result.response.string._ == "104"