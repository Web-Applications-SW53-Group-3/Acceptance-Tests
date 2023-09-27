Feature: Manejar información del perfil

  Scenario: Actualización de datos exitosa
    Given que el usuario ya se encuentra dentro de la plataforma
    And desea actualizar la información de su perfil
    When el usuario modifica sus datos personales y guarda los cambios
    Then el sistema actualizará los detalles del perfil del usuario

  Scenario: Actualización de datos fallida - Información inválida
    Given que el usuario ya se encuentra dentro de la plataforma
    And desea actualizar la información de su perfil
    When el usuario modifica sus datos personales y guarda los cambios
    Then deberá ver un mensaje de error que indica que la información ingresada es inválida

  Scenario: Visualización de información
    Given que el usuario ya se encuentra dentro de la plataforma
    And desea visualizar la información de su perfil
    When el usuario ingrese a la sección de perfil de la plataforma
    Then el sistema mostrará todos los datos de la información personal del usuario

    Examples:
    | Acción                 | Información Actual          | Nueva Información Esperada             |
    | Editar Perfil          | Nombre: John, Edad: 30      | Nombre: Alice, Edad: 25                |
    | Cambiar Foto           | Foto Actual: foto1.jpg      | Foto Nueva: foto2.jpg                  |
    | Actualizar Habilidades | Habilidades: (ninguna)      | Habilidades: Carpintería, Electricidad |
    | Añadir Experiencia     | Experiencia: (ninguna)      | Experiencia: 2 años como Plomero       |
    | Cambiar Contraseña     | Contraseña Actual: oldpass  | Contraseña Nueva: newpass              |
