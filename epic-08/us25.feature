Feature: Acceso Rápido a Redes Sociales e Información de la Empresa

  Scenario: Acceso a Redes Sociales
    Given que soy un usuario de ChambeaPe
    When desplazo hacia abajo de la página web hasta el pie de página
    Then debo ver iconos o enlaces claramente identificados que representen las redes sociales de la empresa
    And al hacer clic en uno de estos iconos o enlaces, debo ser redirigido a la página oficial de la empresa en la red social correspondiente.

  Scenario: Acceso a Información de la Empresa
    Given que soy un usuario en la landing page
    When desplazo hacia abajo hasta el pie de página
    Then debo encontrar información de contacto de la empresa, términos y condiciones, etc.

  Scenario: Diseño y Presentación
    Given que soy un usuario en la landing page
    When vea el pie de página
    Then el diseño debe ser coherente con el estilo general de la página
    And los iconos de redes sociales deben ser fácilmente reconocibles.

    Examples:
    | Acción        | Resultado Esperado             |
    | Clic en Icono | Redirigido a Página de Redes   |
    | Clic en Info  | Visualización de Información   |
    | Diseño        | Coherente y Reconocible        |
