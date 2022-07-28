
Feature: Basic

# The secrects can be used in the payload with the following syntax #(mysecretname)
Background:
* def echoSecret = karate.properties['echoSecret']


Scenario: get request

	Given url karate.properties['testURL']

	And path '/'
	And header Direktiv-ActionID = 'development'
	And header Direktiv-TempDir = '/tmp'
	And request
	"""
	{
		"hello": "world"
	}
	"""
	When method POST
	Then status 200
	And match $ ==
	"""
	{
	"hello": "world"
	}
	"""
	