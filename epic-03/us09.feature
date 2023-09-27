Feature: Publicar Anuncios como Chambeador

  Scenario: Publicación de anuncio de trabajo correcta
    Given que el usuario chambeador se encuentre en la sección de "Publicar"
    And tenga una suscripción premium activa
    When llene los datos solicitados
    Then se publicará un anuncio de trabajo para que los empleadores puedan contactarse.

  Scenario: Datos incompletos en la publicación
    Given que el usuario chambeador se encuentre en la sección de "Publicar"
    And tenga una suscripción premium activa
    When los datos estén incompletos
    Then se mostrará un mensaje de error indicando que faltan llenar datos en la publicación.

  Scenario: Edición de un anuncio de trabajo publicado
    Given que el usuario haya publicado un trabajo
    When seleccione un anuncio y realice cambios en la información del anuncio
    And haga click en el botón de guardar o actualizar
    Then deberá recibir una confirmación de que su anuncio ha sido actualizado

  Scenario: Eliminación de un anuncio de trabajo publicado
    Given que el usuario haya publicado un trabajo
    When seleccione un anuncio y haga click en el botón de Eliminar
    Then deberá recibir una confirmación de que su anuncio ha sido eliminado

    Examples:
    | Chambeador       | Anuncio Creado        | Resultado Esperado            |
    | CarlosChambeador | Anuncio de Pintura    | Anuncio Publicado con Éxito   |
    | LauraChambeadora | Anuncio de Jardinería | Anuncio Publicado con Éxito   |
