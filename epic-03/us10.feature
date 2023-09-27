Feature: Resaltar Anuncios del Empleador

  Scenario: Anuncio resaltado correctamente
    Given que el usuario es un empleador con membresía premium
    When publique un anuncio en la plataforma
    Then el anuncio obtendrá automáticamente prioridad
    And se mostrará en una sección destacada

    Examples:
    | Empleador         | Anuncio Destacado   | Resultado Esperado            |
    | EmpresaABC        | Anuncio 1           | Anuncio Destacado con Éxito   |
    | OtraEmpresa       | Anuncio 2           | Anuncio Destacado con Éxito   |
