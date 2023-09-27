Feature: Actualizar Estado según Disponibilidad

  Scenario: Actualización Automática de Estado durante un Trabajo
    Given que soy un chambeador en ChambeaPe y deseo que mi disponibilidad laboral sea transparente
    When me encuentre realizando un trabajo con un empleador dentro de la aplicación
    Then mi estado en la plataforma se actualizará automáticamente a "Trabajando"

  Scenario: Cambio de Estado al Finalizar un Trabajo
    Given que soy un chambeador y he concluido un trabajo en ChambeaPe
    When acceda a mi perfil de usuario
    And seleccione la opción para ver mi historial laboral
    Then mi estado en la plataforma cambiará automáticamente a "Disponible”

    Examples:
    | Estado Actual | Trabajo en Curso | Nuevo Estado Esperado |
    | Disponible    | No               | Disponible             |
    | Disponible    | Sí               | Trabajando             |
    | Trabajando    | No               | Disponible             |
    | Trabajando    | Sí               | Trabajando             |
