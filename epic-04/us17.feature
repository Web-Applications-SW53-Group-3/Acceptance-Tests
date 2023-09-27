Feature: Gestionar Seguimiento de Estado de Trabajos

  Scenario: Acceso a la Lista de Trabajos
    Given que el empleador inicia sesión en su cuenta
    When acceda a su perfil
    And de clic en la sección “Trabajos”
    Then debe poder ver una lista completa de los trabajos publicados

  Scenario: Actualización del Estado del Trabajo
    Given que el empleador está en la lista de "Mis Trabajos"
    And selecciona un trabajo específico
    When hace clic en un botón de "Gestionar"
    Then debe ser redirigido a una página de edición del trabajo.

  Scenario: Registro de Cambios y Confirmación
    Given que el empleador está en la edición del trabajo
    And seleccione “Actualizar Estado”
    When podrá escoger entre "En Progreso" y "Completado"
    And presione el botón “Guardar”
    Then se guardará el estado con la fecha y hora de la actualización.

    Examples:
    | Empleador       | Chambeador            | Estado Trabajo   | Acción       | Resultado Esperado              |
    | EmpresaXYZ      | JuanChambeador        | En Progreso      | Actualizar Estado | Estado Actualizado con Éxito  |
    | OtraEmpresa     | MariaChambeadora      | Pendiente        | Finalizar Trabajo | Trabajo Marcado como Finalizado |
