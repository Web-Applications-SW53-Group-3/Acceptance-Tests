Feature: Botón de Regreso al Encabezado de la Página

  Scenario: Visualización del Botón de Regreso en Dispositivos Móviles
    Given que soy un usuario que navega por la página web
    When desplazo el contenido hacia abajo de la página
    Then debe aparecer un botón visible en una ubicación conveniente que indique "Regresar al Inicio" o una acción similar.

  Scenario: Funcionalidad del Botón de Regreso
    Given que soy un usuario que ha desplazado el contenido hacia abajo de la página
    When haga clic en el botón de "Regresar al Inicio"
    Then la página debe desplazarse automáticamente hacia el encabezado de la página de inicio de manera suave y rápida
    And el botón debe desaparecer una vez que la página se haya desplazado hacia el encabezado.
    
    Examples:
    | Desplazamiento | Acción de Botón         | Nuevo Estado Esperado |
    | Abajo          | Clic en "Regresar"      | Regreso al Encabezado |
    | Abajo          | No Clic en "Regresar"   | Sin Cambio            |
    | Arriba         | Clic en "Regresar"      | Sin Cambio            |

