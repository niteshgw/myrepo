Feature: Create new user

Background:
 
	Given url 'https://gorest.co.in' 
	And header Content-Type = 'application/json' 
	And header Authorization = 'Bearer cd18e4927ba895421f6a933af996afe367e64fee612220231ca7588c5f63491b'
	
Scenario:
  And path '/public-api/users'
  And request
 """
 {"name":"Nitesh Gai",
 	"gender":"Male",
 	 "email":"Nitesh.G111@15ce.com",
 	 "status":"Active"
 }
  
"""
  When method POST
  Then status 200
  
  And print response
  And print response.data.id
  And print response.data.name
  And def id=response.data.id
  
  Scenario:
  
  And path '/public-api/users/{id}'
  When method GET
  Then status 200
  And print response
  
  And match id==response.data.id