
Feature: Tests for the home page

Background:Define URL 
    Given url 'https://api.realworld.io/api'
   

Scenario:Get all tags
    Given path 'tags'
    When method Get
    Then status 200
    Then match response.tags contains 'welcome'
    
Scenario:Get 10 articles from the page
    Given params {limit:10,offset:0}
    Given path 'articles'
    When method Get
    Then status 200
    * print "hello"

