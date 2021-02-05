Feature: Karate test suite14
  Calling JAVA static and non-static method

  Scenario: Non static method TC

    * def env1 =
      """
      function()
      {
      var temp  = Java.type('misc.utils')
      var utils = new temp();
      return utils.method2();
      }
      """
    * print env1()
    * def res = call env1
    * print res

  Scenario: static method TC

    * def env2 =
      """
      function()
      {
      var temp  = Java.type('misc.utils')
      return temp.method1();
      }
      """
    * print env2()
    * def res = call env2
    * print res