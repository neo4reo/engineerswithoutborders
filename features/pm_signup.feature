# IF I'm not logged in, I shouldn't be able to do anything
Feature: Signing up for an account and logging in
 
  As a project manager of Engineers Without Borders - SF Chapter
  
Background: I am on the EWB home page

Scenario: Signing up
  Given I am on the login page
  And I follow "Sign up now!"
  And I fill in "Name" with "Lawrence Vo"
  And I fill in "Email" with "lawrencetvo@berkeley.edu"
  And I fill in "Password" with "iloveewb"
  And I fill in "Confirmation" with "iloveewb"
  And I press "Create my account"
  Then I should see "Success!"

Scenario: Logging in
  Given I am on the login page
  And I follow "Sign up now!"
  And I fill in "Name" with "Lawrence Vo"
  And I fill in "Email" with "lawrencetvo@berkeley.edu"
  And I fill in "Password" with "iloveewb"
  And I fill in "Confirmation" with "iloveewb"
  And I press "Create my account"
  And I follow "Log in"
  And I fill in "Email" with "lawrencetvo@berkeley.edu"
  And I fill in "Password" with "iloveewb"
  And I press "Log in"
  Then I should be on the list volunteers page
  And I should see "Login successful!"