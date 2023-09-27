Feature: Visualizar Perfiles de Chambeadores

  Scenario: Visualizando los perfiles de los chambeadores
    Given que el empleador está buscando a un chambeador
    When necesita contratar por un servicio
    Then revisará los perfiles de los chambeadores para ver si están calificados para el trabajo.

    Examples:
    | Usuario         | Perfil Visualizado    | Resultado Esperado            |
    | EmpleadorXYZ    | JuanChambeador        | Perfil Mostrado con Éxito     |
    | OtraEmpresa     | MariaChambeadora      | Perfil Mostrado con Éxito     |
