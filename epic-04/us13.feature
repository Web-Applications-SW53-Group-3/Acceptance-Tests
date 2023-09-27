Feature: Reseñar Empleador al Chambeador

  Scenario: Dejando una reseña al chambeador
    Given que el empleador quiere dejar una reseña
    When el chambeador terminó de hacer su trabajo
    Then puntuaría en función de 0 – 5 el trabajo realizado
    And agregaría un comentario a la calificación.

  Scenario: Edición de una reseña existente
    Given que el empleador ya ha dejado una reseña para un chambeador
    When decida cambiar su calificación o comentario
    And haga clic en el botón de editar reseña
    Then debería poder actualizar su calificación y comentario.

  Scenario: Visualización de la reseña por parte del chambeador
    Given que el empleador ha dejado una reseña para un chambeador
    When el chambeador visite su perfil o la página del trabajo correspondiente
    Then debería ver la calificación y el comentario dejados por el empleador.

    Examples:
    | Empleador     | Chambeador       | Calificación  | Comentario                        | Resultado Esperado        |
    | EmpresaXYZ    | JuanChambeador   | 4 estrellas   | Buen trabajo, muy profesional     | Reseña Enviada con Éxito  |
    | OtraEmpresa   | MariaChambeadora | 5 estrellas   | Excelente servicio, la recomiendo | Reseña Enviada con Éxito  |
