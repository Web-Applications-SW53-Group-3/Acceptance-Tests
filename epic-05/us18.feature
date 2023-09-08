Feature: Personalizar interfaz de usuario
    Como usuario quiero poder personalizar la apariencia y configuración de la aplicación, para que se adapte a mis preferencias.

Scenario 01: Personalización de Apariencia
    Given que el usuario está en la sección de "Perfil"
    When seleccione el símbolo de configuración
    And elija en apariencias las opciones de "Claro" u "Oscuro"
    Then la apariencia de la aplicación cambiará de acuerdo con la elección del usuario.

Scenario 02: Cambio de Idioma
    Given que el usuario está en la sección de "Perfil"
    When seleccione la opción de "Cambiar Idioma"
    And elija entre los idiomas disponibles (por ejemplo, español e inglés)
    Then la aplicación se adaptará al idioma seleccionado por el usuario.

Example:
    | eleccion_apariencia | eleccion_idioma |
    | Claro               | español         |
    | Oscuro              | inglés          |
    | Oscuro              | francés         |