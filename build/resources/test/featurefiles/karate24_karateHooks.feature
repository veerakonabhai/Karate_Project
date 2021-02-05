Feature: karate test suite 24
  using Scenario and Feature test fixtur (karate-hooks)

  Background: init
    * print "From background block"
    #* configure afterScenario =
    #"""
    #function (){
    #karate.log("from after scenario")
    #}
    #"""
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature")
    }
    """


  Scenario: karate hooks test case
    * print "From scenario block"