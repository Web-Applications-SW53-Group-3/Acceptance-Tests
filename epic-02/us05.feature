Feature: Administrar tarjeta
    Como usuario quiero administrar los datos de mi tarjeta para permitir realizar transacciones dentro de la aplicación.

Scenario 01: Agregar tarjeta
    Given que el usuario desea guardar su tarjeta en la plataforma para futuras transacciones
    When el usuario ingrese los detalles de su tarjeta
    And le de a la opción guardar
    Then el sistema agregará la tarjeta al perfil del usuario
    And mostrará un mensaje de confirmación indicando que se agregó la tarjeta correctamente.

Scenario 02: Eliminar tarjeta
    Given que el usuario desea eliminar su tarjeta de la plataforma
    When el usuario seleccione la opción de eliminar tarjeta
    Then el sistema eliminará la tarjeta seleccionada
    And mostrará un mensaje de confirmación indicando que la tarjeta ha sido eliminada correctamente.

Example:
    | accion             | tarjeta_eliminar   |
    | agregar            | tarjeta1           |
    | eliminar           | tarjeta2           |
    | agregar            | tarjeta3           |
