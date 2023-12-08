@regression

Feature: To validate the GET End response from file
  To validate the get end point response from external file

  Background: Setup the base url
    #Given url 'http://localhost:9897'
    * url demoBaseUrl

  Scenario: To get the data in JSON format and validate from file
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    # Create a variable to store the data from external file
    * def actualResponse = read("../JsonResponse.json")
    # And print "File ==> ", actualResponse
    And print "Response ==> ", response
  #  And match response == actualResponse

