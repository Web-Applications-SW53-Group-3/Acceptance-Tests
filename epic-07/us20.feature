Feature: Recepcionar calificaciones y comentarios de Empleadores
    Como chambeador quiero recibir calificaciones y comentarios de los empleadores después de completar un trabajo para demostrar mi experiencia y calidad de trabajo.

Scenario 01: Recepción de Calificaciones y Comentarios
    Given que he completado un trabajo en ChambeaPe
    When el empleador me califique y deje comentarios sobre mi desempeño, y reciba una notificación informándome de la revisión de mi trabajo
    And haga clic en el botón “Ver Reseña” para ver la reseña
    Then podré visualizar el comentario y la calificación que me hayan otorgado.

Scenario 02: Recepción de Calificaciones y Comentarios
    Given que he realizado múltiples trabajos en ChambeaPe y he recibido calificaciones y comentarios de empleadores
    When acceda a mi perfil de usuario
    And seleccione la opción para ver mi historial laboral
    Then podré ver de manera consolidada todas las calificaciones y comentarios que he recibido en trabajos anteriores.

Example:
    | completar_trabajo| revisar_calificaciones |
    | si               | si                     |
    | si               | no                     |
    | no               | si                     |