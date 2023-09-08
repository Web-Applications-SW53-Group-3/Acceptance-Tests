Feature: Manejar certificados
    Como chambeador quiero manejar mis certificados para tener una mejor oportunidad laboral.

Scenario 01: Agregación de Certificados a mi Perfil
    Given que soy un usuario chambeador en ChambeaPe y deseo fortalecer mi perfil laboral
    When acceda a mi cuenta y navegue a la sección de "Certificados"
    And seleccione la opción para agregar un nuevo certificado
    Then podré cargar una imagen o documento que respalde mis habilidades y logros.

Example:
    | usuario_chambeador | agregar_certificado |
    | si                | si                  |
    | si                | no                  |
    | no                | si                  |