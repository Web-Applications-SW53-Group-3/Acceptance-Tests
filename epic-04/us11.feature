Feature: Registrar Pago del Chambeador

  Scenario: Definiendo el pago del chambeador seleccionado
    Given que el empleador necesita definir el costo su trabajo
    When haga contacto con el chambeador
    Then podrán acordar un precio final del trabajo.

  Scenario: Definiendo el pago del chambeador postulante
    Given que el empleador necesita definir el costo su trabajo
    And este revisó los perfiles de los postulantes
    When haga contacto con el chambeador elegido
    And se contacte con él
    Then podrán acordar un precio final del trabajo.

    Examples:
    | Chambeador        | Trabajo Realizado    | Pago Registrado | Resultado Esperado               |
    | JuanChambeador    | Trabajo de Pintura   | Pago Confirmado | Pago Registrado con Éxito       |
    | MariaChambeadora  | Trabajo de Plomería  | Pago Pendiente  | Pago Registrado para Verificación|
