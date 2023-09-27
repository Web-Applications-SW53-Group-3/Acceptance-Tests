Feature: Manejar Certificados

  Scenario: Agregar Certificados a mi Perfil
    Given que soy un usuario chambeador en ChambeaPe y deseo fortalecer mi perfil laboral
    When acceda a mi cuenta y navegue a la sección de "Certificados"
    And seleccione la opción para agregar un nuevo certificado
    Then podré cargar una imagen o documento que respalde mis habilidades y logros

  Scenario: Eliminación de Certificados en mi Perfil
    Given que he añadido certificados a mi perfil en ChambeaPe
    When acceda a la sección de "Certificados" en mi perfil
    And seleccione la opción para eliminar un certificado
    Then el certificado seleccionado será eliminado de mi perfil.

  Scenario: Edición de Certificados en mi Perfil
    Given que he añadido certificados a mi perfil en ChambeaPe
    When acceda a la sección de "Certificados" en mi perfil
    And seleccione la opción para editar un certificado
    Then podré actualizar la imagen o documento del certificado seleccionado.

  Scenario: Visualización de Certificados en mi Perfil
    Given que he añadido certificados a mi perfil en ChambeaPe
    When acceda a la sección de "Certificados" en mi perfil
    Then podré visualizar todos los certificados que he subido

  Scenario: Visualización de Certificados por los Empleadores
    Given que he añadido certificados a mi perfil en ChambeaPe
    When un empleador visite mi perfil
    Then el empleador podrá visualizar todos los certificados que he subido.

    Examples:
    | Acción         | Certificados en Perfil | Nuevo Total de Certificados  |
    | Agregar        | 3                      | 4                            |
    | Eliminar       | 2                      | 1                            |
    | Editar         | 1                      | 1                            |
    | Visualizar     | 4                      | 4                            |
    | Empleador Ver  | 4                      | 4                            |