Feature: Karate test suite13
  CallingFeature from external file

  Scenario: Javascript function test case1
    * def fn1 = function(){return 123;}

    * def fn2 =
      """
      function(id){
      karate.log(id);
      }
      """
    * print fn1()
    * fn2(33)