Feature: Mejorar a cuenta premium

  Scenario: Actualización a cuenta premium exitosa
    Given que el usuario se encuentra con una cuenta free
    And desea ascender su estado a premium
    When el usuario seleccione la opción de mejorar su cuenta a premium
    And seleccione su método de pago
    And realice la respectiva transacción
    Then el sistema concederá al usuario el estado premium
    And podrá acceder a las funciones adicionales que ofrece

  Scenario: Método de pago inválido
    Given que el usuario se encuentra con una cuenta free
    And desea ascender su estado a premium
    When el usuario seleccione la opción de mejorar su cuenta a premium
    And seleccione método de pago que no sea válido
    Then el sistema no permitirá al usuario que complete la transacción
    And mostrará un mensaje de error indicando que el método de pago no es válido

    Examples:
    | Tipo de Cuenta   | Plan Seleccionado  | Precio | Resultado Esperado               |
    | Cuenta Básica    | Plan Premium Mensual | $19.99 | Actualización Exitosa          |
    | Cuenta Premium   | Plan Premium Anual  | $149.99 | Cambio de Plan Exitoso         |
    | Cuenta Básica    | Plan Premium Anual  | $149.99 | Actualización Exitosa          |
    | Cuenta Premium   | Plan Premium Mensual | $19.99 | Cambio de Plan Exitoso         |
