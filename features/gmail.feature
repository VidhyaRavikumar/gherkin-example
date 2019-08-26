Feature: Compose and send email using gmail
Scenario: login with valid credentials
Given I am on the login page
And User login with username "vidhyaswarnalatha" and password "yyyyy"
And compose a new email to some id
When User sends an email to "vidhyaswarnalatha@gmail.com" with subject "test email"
Then The email appears in the sent folder of gmail with subject "test email"
