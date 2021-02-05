Feature: karate test suite2
  Validating JSON content

  Scenario: JSON test case 1
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name

  Scenario: JSON test case 2
    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    * print json.id
    * print json.tool.name

  Scenario: JSON test case 3
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * assert json.id == "101"
    * assert json.tool.name == "Karate"

  Scenario: JSON test case 4
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: JSON test case 5
    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.4"}}
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

    #added to test github integration