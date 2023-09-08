Feature: Mejorar a cuenta premium
    Como usuario, quiero mejorar mi cuenta a premium con diferentes métodos de pagos para obtener mejoras en mi cuenta.

Scenario 01: Actualización a cuenta premium exitosa
    Given que el usuario se encuentra con una cuenta gratuita
    And desea ascender su estado a premium
    When el usuario seleccione la opción de mejorar su cuenta a premium
    And seleccione su método de pago
    And realice la respectiva transacción
    Then el sistema concederá al usuario el estado premium
    And podrá acceder a las funciones adicionales que ofrece.

Scenario 02: Método de pago inválido
    Given que el usuario se encuentra con una cuenta gratuita
    And desea ascender su estado a premium
    When el usuario seleccione la opción de mejorar su cuenta a premium
    And seleccione un método de pago que no sea válido
    Then el sistema no permitirá al usuario que complete la transacción
    And mostrará un mensaje de error indicando que el método de pago no es válido.

Example:
    | estado_actual | metodo_de_pago   |
    | gratuito      | tarjeta_de_credito|
    | gratuito      | paypal           |
    | gratuito      | transferencia    |