@ignore
Feature: check assertions 

Background: 
	Given url 'https://gorest.co.in' 
	And header Accept = 'application/Json' 
	
	
Scenario: 
	And path '/public-api/posts' 
	When method get 
	Then status 200 
	And print response
	
	And match response.data[0].user_id == 23   
	#String title= response.data[1].title
