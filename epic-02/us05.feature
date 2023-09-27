Feature: Administrar tarjeta

  Scenario: Agregar tarjeta nueva
    Given que estoy en la página de administración de tarjetas
    When ingreso los detalles válidos de mi tarjeta
    And hago clic en el botón de agregar tarjeta
    Then el sistema agregará la tarjeta al perfil del usuario
    And mostrará un mensaje de confirmación indicando que se agregó la tarjeta correctamente

  Scenario: Agregar tarjeta inválida
    Given que estoy en la página de administración de tarjetas
    When ingreso los detalles válidos de mi tarjeta
    And hago clic en el botón de agregar tarjeta
    Then el sistema rechazará la tarjeta
    And mostrará un mensaje de error indicando que la tarjeta tiene datos inválidos

  Scenario: Eliminar tarjeta existente
    Given que el usuario desea eliminar su tarjeta de la plataforma
    When el usuario seleccione la opción de eliminar tarjeta
    Then el sistema eliminará la tarjeta seleccionada
    And mostrará un mensaje de confirmación indicando que la tarjeta ha sido eliminada correctamente

  Scenario: Actualizar datos de una tarjeta existente
    Given que el usuario está en la página de administración de tarjetas
    When seleccione la tarjeta existente que desea actualizar
    And modifique los detalles de la tarjeta
    And haga clic en el botón de guardar cambios
    Then el sistema actualizará los detalles de la tarjeta
    And mostrará un mensaje de confirmación indicando que los cambios se guardaron con éxito

Examples:
  | Acción             | Tarjeta Registrada                  | Nueva Tarjeta        | Resultado Esperado             |
  | Agregar Tarjeta    | (ninguna)                           | Nueva tarjeta válida | Tarjeta Agregada Exitosamente  |
  | Actualizar Tarjeta | Tarjeta actual: **** **** **** 1234 | Nueva tarjeta válida | Tarjeta Actualizada con Éxito  |
  | Eliminar Tarjeta   | Tarjeta actual: **** **** **** 1234 | (ninguna)            | Tarjeta Eliminada con Éxito    |
