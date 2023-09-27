Feature: Personalizar Interfaz de Usuario

  Scenario: Personalización de Apariencia Confirmada
    Given que el usuario está en la sección de "Perfil"
    When seleccione el símbolo de configuración
    And elija en apariencias las opciones de "Claro" u "Oscuro"
    And confirme los cambios
    Then la apariencia de la aplicación cambiará de acuerdo con la elección del usuario.

  Scenario: Cambio de apariencia sin confirmación
    Given que el usuario está en la sección de "Perfil"
    When seleccione el símbolo de configuración
    And elija en apariencias las opciones de "Claro" u "Oscuro"
    And cierre la aplicación sin confirmar los cambios
    Then la apariencia de la aplicación no debería cambiar.

  Scenario: Cambio de Idioma Confirmado
    Given que el usuario está en la sección de "Perfil"
    When seleccione la opción de "Cambiar Idioma"
    And elija entre los idiomas disponibles (por ejemplo, español e inglés)
    Then la aplicación se adaptará al idioma seleccionado por el usuario.

  Scenario: Cambio de Idioma sin confirmación
    Given que el usuario está en la sección de "Perfil"
    When seleccione la opción de "Cambiar Idioma"
    And elija entre los idiomas disponibles (por ejemplo, español e inglés)
    And cierre la aplicación sin confirmar los cambios
    Then el idioma de la aplicación no debería cambiar.

    Examples:
    | Usuario   | Configuración de Interfaz            | Resultado Esperado                  |
    | Usuario1  | Cambio de Tema a Oscuro              | Tema Cambiado con Éxito             |
    | Usuario2  | Ajuste de Tamaño de Fuente           | Tamaño de Fuente Cambiado con Éxito |
    | Usuario3  | Cambio de Idioma a Español           | Idioma Cambiado con Éxito           |
    | Usuario4  | Cambio de Idioma a Francés           | Idioma Cambiado con Éxito           |
    | Usuario5  | Cambio de Idioma a Alemán            | Idioma Cambiado con Éxito           |
    | Usuario6  | Cambio de Tema a Claro               | Tema Cambiado con Éxito             |
    | Usuario7  | Ajuste de Tamaño de Fuente no válido | Error al Cambiar Tamaño de Fuente   |
    | Usuario8  | Cambio de Idioma no válido           | Error al Cambiar Idioma              |

