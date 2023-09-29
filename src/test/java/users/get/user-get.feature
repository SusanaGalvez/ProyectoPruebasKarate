Feature: Get user

  Scenario: Get a user
    # llamo y leo la carpeta correspondiente donde está el archivo que quiero usar
    * call read('../post/user-post.feature@Create')
    #Cojo la url
    Given url 'https://petstore.swagger.io/v2/user/Virginia'
    # metodo get
    When method get
    Then status 200
    # Valido que son los mismos datos
    And match $ == read('../json/user.json')


