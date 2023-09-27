Feature: Filtrar Perfiles de Chambeadores

  Scenario: Filtro por calificación
    Given que el usuario empleador se encuentre en la sección de "Chambeadores"
    And tenga una suscripción premium activa
    And seleccione la opción de "Ajustar filtros"
    When elija la calificación mínima
    Then se mostrarán solo los perfiles con la calificación mínima seleccionada.

  Scenario: Filtro por antigüedad
    Given que el usuario empleador se encuentre en la sección de "Chambeadores"
    And tenga una suscripción premium activa
    And seleccione la opción de "Ajustar filtros"
    When elija la antigüedad mínima
    Then se mostrarán solo los perfiles con la antigüedad mínima seleccionada.

  Scenario: Filtro por disponibilidad
    Given que el usuario empleador se encuentre en la sección de "Chambeadores"
    And tenga una suscripción premium activa
    And seleccione la opción de "Ajustar filtros"
    When elija el rango de disponibilidad
    Then se mostrarán solo los perfiles que estén disponibles en el rango seleccionado.

  Scenario: Filtro por Ubicación
    Given que el usuario empleador se encuentre en la sección de "Chambeadores"
    And tenga una suscripción premium activa
    And seleccione la opción de "Ajustar filtros"
    When elija una ubicación específica
    Then se mostrarán solo los perfiles que estén en la ubicación seleccionada.

    Examples:
    | Filtros Aplicados             | Resultado Esperado            |
    | Filtros: Electricista, 5 km   | Perfiles Filtrados            |
    | Filtros: Plomero, 10 km       | Perfiles Filtrados            |
    | Sin Filtros                   | Todos los Perfiles Mostrados  |
