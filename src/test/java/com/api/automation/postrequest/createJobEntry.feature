@parallel=false
Feature: To create the Job entry in the application
  Use POST /normal/webapi/add to create job entry in the application

  Background: Create and Initialize base Url
    #Given url 'http://localhost:9897'
    * url demoBaseUrl

  Scenario: To create the Job Entry in JSON format
    Given path '/normal/webapi/add'
    And request {  "jobId": 5,"jobTitle": "Software Engg - 3", "jobDescription": "To develop andriod application", "experience": [ "Google", "Apple", "Mobile Iron", "Google" ], "project": [ { "projectName": "Movie App", "technology": [ "Kotlin", "SQL Lite","Gradle", "Jenkins" ] } ]}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.jobTitle == "Software Engg - 3"