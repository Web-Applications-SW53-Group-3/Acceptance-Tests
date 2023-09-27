Feature: Manejar Anuncios de Trabajo

  Scenario: Crear anuncios de trabajo
    Given que el empleador quiere crear sus anuncios
    When requiera un chambeador
    Then podrá subir un anuncio a la app web

  Scenario: Editar anuncios de trabajo
    Given que el empleador quiere editar sus anuncios
    When requiera cambiar algún parámetro o característica
    Then podrá modificar su anuncio
    And se actualizará en la app web.

  Scenario: Eliminar anuncios de trabajo
    Given que el empleador quiere eliminar uno de sus anuncios
    When ya no requiere más candidatos
    Then podrá eliminar su anuncio de la app web.

  Scenario: Visualización de anuncios de trabajo creados
    Given que el empleador ha creado varios anuncios de trabajo
    When visita la sección de "Anuncios"
    Then debería poder ver todos los anuncios que ha creado.

    Examples:
    | Empleador       | Anuncio Creado        | Resultado Esperado            |
    | EmpresaABC      | Anuncio de Electricista | Anuncio Publicado con Éxito |
    | OtraEmpresa     | Anuncio de Plomero     | Anuncio Publicado con Éxito  |
