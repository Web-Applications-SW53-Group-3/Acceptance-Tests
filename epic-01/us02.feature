Feature: Registrar con correo

  Scenario: Registro exitoso
    Given que el cliente quiere registrarse en la plataforma
    When el cliente ingresa un correo electrónico válido y una contraseña segura
    Then el sistema procesará el registro
    And creará una cuenta asociada con ese correo electrónico

  Scenario: Registro fallido - Correo Inválido
    Given que estoy en la página de registro
    When ingreso el correo electrónico inválido
    And hago click en el botón de registro
    Then el sistema procesará el registro
    And debería ver un mensaje de error que indica que el correo electrónico es inválido

  Scenario: Registro fallido - Contraseña Inválida
    Given que estoy en la página de registro
    When ingreso el correo electrónico válido y la contraseña inválida
    And hago click en el botón de registro
    Then el sistema procesará el registro
    And debería ver un mensaje de error que indica que la contraseña es inválida

    Examples:
    | Correo Electrónico          | Contraseña   | Resultado Esperado                 |
    | new_user@example.com        | password123 | Registro Exitoso                    |
    | existing_user@example.com   | password    | Registro Fallido (Usuario Existente)|
    | invalid_email               | password123 | Registro Fallido (Correo Inválido)  |
    | new_user@example.com        | shortpass   | Registro Fallido (Contraseña Corta) |
