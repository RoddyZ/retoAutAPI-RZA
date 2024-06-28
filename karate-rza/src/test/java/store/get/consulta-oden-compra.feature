Feature: Consulta el orden de una compra

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Obtener detalles de una orden
    Given path '/store/order/4'
    When method get
    Then status 200
