Feature: Recepcionar Calificaciones y Comentarios de Empleadores

  Scenario: Recepción de Calificaciones y Comentarios
    Given que he completado un trabajo en ChambeaPe
    When el empleador me califique y deje comentarios sobre mi desempeño
    And reciba una notificación informándome de la revisión de mi trabajo
    And haga clic en el botón “Ver Reseña” para ver la reseña
    Then podré visualizar el comentario y la calificación que me hayan otorgado

  Scenario: Recepción de Calificaciones y Comentarios
    Given que he realizado múltiples trabajos en ChambeaPe y he recibido calificaciones y comentarios de empleadores
    When acceda a mi perfil de usuario
    And seleccione la opción para ver mi historial laboral
    Then podré ver de manera consolidada todas las calificaciones y comentarios que he recibido en trabajos anteriores

    Examples:
    | Chambeador       | Empleador   | Calificación  | Comentario                           | Resultado Esperado              |
    | JuanChambeador   | EmpresaXYZ  | 4 estrellas   | Buen trato, recomendaría nuevamente  | Calificación Recibida con Éxito |
    | MariaChambeadora | OtraEmpresa | 5 estrellas   | Excelente profesional, la recomiendo | Calificación Recibida con Éxito |
