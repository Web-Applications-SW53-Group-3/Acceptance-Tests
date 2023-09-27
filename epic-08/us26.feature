Feature: Diseño Responsivo en Dispositivos Móviles

  Scenario: Diseño Responsivo en Dispositivos Móviles
    Given que soy un usuario que accede a la página web desde un dispositivo móvil, como un smartphone
    When navegue por la página
    Then el diseño y la disposición de los elementos de la página deben ajustarse automáticamente para adaptarse a la pantalla de mi dispositivo móvil
    And los elementos de la página, como imágenes y texto, deben ser claramente visibles y legibles sin necesidad de hacer zoom

  Scenario: Navegación Intuitiva en Dispositivos Móviles
    Given que soy un usuario que accede a la página web desde un dispositivo móvil
    When utilice la navegación en la página
    Then los menús desplegables o elementos de navegación deben funcionar de manera intuitiva y ser fáciles de utilizar con gestos táctiles.

  Scenario: Pruebas en Diferentes Dispositivos Móviles
    Given que el equipo de desarrollo ha implementado el diseño responsivo
    When se realicen pruebas de acceso a la página desde una variedad de dispositivos móviles, incluyendo diferentes modelos de smartphones y tabletas
    Then la página debe funcionar de manera óptima en todos estos dispositivos, sin problemas de visualización o funcionalidad en ninguno de ellos.

    Examples:
    | Dispositivo           | Resultado Esperado                 |
    | Smartphone            | Diseño se ajusta automáticamente   |
    | Tablet                | Elementos visibles sin hacer zoom  |
    | Navegación            | Gestos táctiles funcionan          |
    | Diversos Dispositivos | Funciona sin problemas en todos    |
