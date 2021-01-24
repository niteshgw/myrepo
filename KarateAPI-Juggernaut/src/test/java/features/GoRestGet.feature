Feature: check returned all contries by API

Background: 
   Given url 'https://restcountries.eu'
   And header Accept = 'application/Json'
 
 @ignore
Scenario: get list of all countries
    And path '/rest/v2/all'
    When method get
    Then status 200
    And print response
    
