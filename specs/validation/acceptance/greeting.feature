Feature: Greeting

  @story-1
  Rule: Calling /hello with a name returns a greeting that includes it

    Scenario: A consumer supplies a name
      Given the greeter service is running
      When Priya calls GET /hello with name "Priya"
      Then she receives a JSON response whose greeting includes "Priya"

  @story-2
  Rule: Calling /hello without a name still returns a sensible default greeting

    Scenario: A consumer supplies no name
      Given the greeter service is running
      When Priya calls GET /hello with no name
      Then she receives a JSON response with a default greeting
