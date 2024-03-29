Feature: Sign up
  In order to get access to protected sections of the site
  As a user
  I want to be able to sign up

    Background:
      Given I am not logged in
      And I am on the home page
      And I go to the sign up page

    Scenario: User signs up with valid data
      And I fill in the following:
        | Nombre                  | Testy McUserton |
        | Email                 | user@test.com   |
        | Contraseña              | please          |
        | Confirmación de Contraseña | please          |
      And I press "Sign up"
      Then I should see "Crear Comentario"
      And I should see "Desconectar" 
      
    Scenario: User signs up with invalid email
      And I fill in the following:
        | Nombre                  | Testy McUserton |
        | Email                 | invalidemail    |
        | Contraseña              | please          |
        | Confirmación de Contraseña | please          |
      And I press "Sign up"
      Then I should see "Email is invalid"

    Scenario: User signs up without password
      And I fill in the following:
        | Nombre                  | Testy McUserton |
        | Email                 | user@test.com   |
        | Contraseña              |                 |
        | Confirmación de Contraseña | please          |
      And I press "Sign up"
      Then I should see "Password can't be blank"

    Scenario: User signs up without password confirmation
      And I fill in the following:
        | Nombre                  | Testy McUserton |
        | Email                 | user@test.com   |
        | Contraseña              | please          |
        | Confirmación de Contraseña |                 |
      And I press "Sign up"
      Then I should see "Password doesn't match confirmation"

    Scenario: User signs up with mismatched password and confirmation
      And I fill in the following:
        | Nombre                  | Testy McUserton |
        | Email                 | user@test.com   |
        | Contraseña              | please          |
        | Confirmación de Contraseña | please1         |
      And I press "Sign up"
      Then I should see "Password doesn't match confirmation"

