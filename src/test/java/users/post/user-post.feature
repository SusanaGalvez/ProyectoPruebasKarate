Feature: Post user on pets-tore.swagger.io

  @Create post
  Scenario: Create a user
    # Meto en una variable el Json que hemos obtenido
    * def jsonUser = read('../json/user.json')
    # Cojo la url
    Given url 'https://petstore.swagger.io/v2/user'
    # Solicito el json
    And request jsonUser
    When method post
    Then status 200












