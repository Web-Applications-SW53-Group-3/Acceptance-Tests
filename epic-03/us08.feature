Feature: Notificar trabajos recomendados
    Como chambeador quiero recibir notificaciones sobre trabajos relevantes a mi perfil mediante la suscripción premium para postular más rápido.

Scenario 01: Preferencias de trabajo suministradas
    Given que el usuario chambeador tenga las notificaciones activadas
    When complete sus preferencias de trabajo
    And cuente con una suscripción premium activa
    Then se enviarán notificaciones periódicamente informándole sobre trabajos que le puedan interesar.

Scenario 02: Preferencias de trabajo incompletas o no suministradas
    Given que el usuario chambeador tenga las notificaciones activadas
    When sus preferencias de trabajo estén incompletas
    And cuente con una suscripción premium activa
    Then el sistema le notificará que las preferencias deben ser completadas para recibir notificaciones de trabajos sugeridos.

Example:
    | notificaciones_activas | suscripcion_premium | preferencias_completas |
    | si                    | si                  | si                    |
    | si                    | no                  | no                    |
    | no                    | si                  | no                    |