Feature: Evaluar Historial Laboral de Chambeadores

  Scenario: Acceso al perfil de los candidatos
    Given que el empleador selecciona uno de sus trabajos publicados
    When seleccione el botón de “Postulantes”
    And visualice la lista de candidatos que se han postulado para ese puesto
    And le dé clic a alguno de los postulantes
    Then visualizará el perfil del postulante.

  Scenario: Visualización del historial laboral
    Given que el empleador se encuentre en el perfil del postulante
    And seleccione el botón “Historial Laboral”
    When se le redirija al apartado del historial laboral
    Then podrá visualizar los proyectos realizados para los demás empleadores.

  Scenario: Visualización de comentarios de otros empleadores
    Given que el empleador se encuentra en el perfil del postulante
    When seleccione el botón “Comentarios”
    And visualice los comentarios de otros empleadores
    Then podrá verificar las referencias de su trabajo.

    Examples:
    | Empleador       | Chambeador            | Evaluación    | Comentario                       | Resultado Esperado              |
    | EmpresaXYZ      | JuanChambeador        | 4 estrellas   | Buen desempeño, puntualidad      | Evaluación Enviada con Éxito    |
    | OtraEmpresa     | MariaChambeadora      | 5 estrellas   | Excelente trabajo, la recomiendo | Evaluación Enviada con Éxito    |
