Feature: Contar mascotas con el mismo nombre


  Scenario: Contar mascotas
    * def nombres = read('./json/pets.json')
    * def contador = {}
    * eval for (var i = 0; i < nombres.length; i++) { var nombre = nombres[i].name; if (!contador[nombre]) { contador[nombre] = 1;  } else {contador[nombre]++; }}
    * print "\n Conteo de nombres:", contador








