Feature: Barra de Navegación en Landing Page

  Scenario: Acceso a la Barra de Navegación para Búsqueda Rápida
    Given que soy un usuario de ChambeaPe
    When abro el sitio web de ChambeaPe
    Then debería ver claramente una barra de navegación en la interfaz de usuario.

  Scenario: Búsqueda Rápida a través de la Barra de Navegación
    Given que estoy en la página principal
    When hago clic en algunos de los apartados de la barra de navegación
    Then podré visualizar el apartado de manera inmediata.

    Examples:
    | Navegación Seleccionada |
    | Inicio                  |
    | Perfil                  |
    | Trabajos                |
    | Mensajes                |
    | Configuración           |

