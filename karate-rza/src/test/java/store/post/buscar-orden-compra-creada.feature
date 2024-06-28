Feature: Buscar orden de compra creada

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Crear una nueva orden
    Given path '/store/order/'
    And request { "id": 1, "petId": 11, "quantity": 0, "shipDate": '2024-06-27T20:48:35.277Z', "status": 'placed', "complete": true }
    When method post
    Then status 200

  Scenario: Buscar una orden de compra por ID (usar el Id de arriba creado)
    Given def orderId = 1
    And path '/store/order/'+orderId
    When method get
    Then status 200
    And match response == { id: '#number', petId: '#number', quantity: '#number', shipDate: '#string', status: '#string', complete: '#boolean' }


