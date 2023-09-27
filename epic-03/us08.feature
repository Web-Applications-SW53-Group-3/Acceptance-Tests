Feature: Notificar Trabajos Recomendados

  Scenario: Preferencias de trabajo suministradas
    Given que el usuario chambeador tenga las notificaciones activadas
    When complete sus preferencias de trabajo
    And cuente con una suscripción premium activa
    Then se enviarán notificaciones periódicamente informándole sobre trabajos que le puedan interesar.

  Scenario: Preferencias de trabajo incompletas o no suministradas
    Given que el usuario chambeador tenga las notificaciones activadas
    When sus preferencias de trabajo estén incompletas
    And cuente con una suscripción premium activa
    Then el sistema le notificará que las preferencias deben ser completadas para recibir notificaciones de trabajos sugeridos

  Scenario: Desactivación de notificaciones
    Given que el usuario chambeador tenga las notificaciones activadas
    When decida desactivar las notificaciones en su perfil
    Then no debería recibir más notificaciones sobre trabajos sugeridos, independientemente de su suscripción premium.

    Examples:
    | Chambeador      | Trabajos Recomendados  | Resultado Esperado       |
    | PedroChambeador | Trabajo 1, Trabajo 2   | Notificaciones Enviadas  |
    | AnaChambeadora  | Trabajo 3, Trabajo 4   | Notificaciones Enviadas  |
