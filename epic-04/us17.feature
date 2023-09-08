Feature: Gestionar seguimiento de Estado de Trabajos
    Como empleador quiero actualizar y gestionar el estado de los trabajos para poder mantener un registro claro del progreso de cada trabajo.

Scenario 01: Acceso a la Lista de Trabajos
    Given que el empleador inicia sesión en su cuenta
    When acceda a su perfil
    And de clic en la sección “Trabajos”
    Then debe poder ver una lista completa de los trabajos publicados.

Scenario 02: Actualización del Estado del Trabajo
    Given que el empleador está en la lista de "Mis Trabajos"
    And selecciona un trabajo específico,
    When hace clic en un botón de "Gestionar",
    Then debe ser redirigido a una página de edición del trabajo.

Scenario 03: Registro de Cambios y Confirmación
    Given que el empleador está en la edición del trabajo
    AndY seleccione “Actualizar Estado”
    Then podrá escoger entre "En Progreso" y "Completado"
    When presione el botón “Guardar”
    Then se guardará el estado con la fecha y hora de la actualización.

Example:
    | estado_trabajo | trabajo_seleccionado |
    | En Progreso    | Trabajo 1            |
    | Completado     | Trabajo 2            |
    | En Progreso    | Trabajo 3            |