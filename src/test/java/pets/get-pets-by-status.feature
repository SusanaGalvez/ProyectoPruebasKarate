Feature: Obtener nombres e IDs de mascotas vendidas desde PetStore

  Scenario: Obtener nombres e IDs de mascotas vendidas
    # Cojo la url
    * url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    Given method GET
    When status 200
    # Meto en una variable la función de mapear el nombre y el id
    * def mascotas = karate.map(response, function(x){ return { nombre: x.name, id: x.id } })
    # Imprimo en pantalla el nombre y el id de las mascotas
    * print '\n Mascotas vendidas:', mascotas
