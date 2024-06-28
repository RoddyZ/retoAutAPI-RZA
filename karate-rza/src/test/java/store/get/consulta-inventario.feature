Feature: Consulta el inventario de la tienda de mascostas

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Verificar el inventario de ventas

    Given path '/store/inventory'
    When method get
    Then status 200
