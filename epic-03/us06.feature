Feature: Destacar Perfil de Chambeador

  Scenario: Destacar perfil exitosamente
    Given que un empleador está buscando trabajadores para un trabajo específico
    And el empleador está en el perfil de un chambeador
    When el empleador selecciona la opción para destacar el perfil del chambeador
    Then el sistema destacará el perfil del chambeador
    And el chambeador recibirá una notificación de que su perfil ha sido destacado

  Scenario: Destacar perfil - Créditos insuficientes
    Given que un empleador está buscando trabajadores para un trabajo específico
    And el empleador está en el perfil de un chambeador
    And el empleador no tiene suficientes créditos para destacar el perfil
    When el empleador intenta destacar el perfil del chambeador
    Then el sistema no permitirá al empleador destacar el perfil
    And mostrará un mensaje de error indicando que no tiene suficientes créditos

  Scenario: Chambeador destacado visible
    Given que un chambeador tiene su perfil destacado
    And un empleador está buscando trabajadores
    When el empleador navega por los perfiles de chambeadores disponibles
    Then el perfil del chambeador destacado será más visible o se destacará de alguna manera en la lista de resultados

Examples:
  | Chambeador       | Duración Destacada  | Resultado Esperado          |
  | JuanChambeador   | 7 días              | Perfil Destacado con Éxito  |
  | MariaChambeadora | 30 días             | Perfil Destacado con Éxito  |
