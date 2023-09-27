Feature: Iniciar sesión

  Scenario: Inicio de sesión exitoso
    Given que el usuario ya se encuentra registrado en la plataforma
    When ingresa su respectivo correo y contraseña
    Then el sistema permitirá al usuario iniciar sesión correctamente en la plataforma

  Scenario: Inicio de sesión fallido
    Given que el usuario ya se encuentra registrado en la plataforma
    When ingresa un correo o contraseña incorrecta
    Then el sistema no permitirá al usuario iniciar sesión
    And se mostrará un mensaje de error indicando que las credenciales son incorrectas

  Scenario: Recuperación de Contraseñas
    Given que el usuario está en la página de inicio de sesión y ha olvidado su contraseña
    When hace click en el enlace "Olvidé mi contraseña"
    Then deberá ser redirigido a la página de recuperación de contraseña

    Examples:
    | Correo Electrónico       | Contraseña | Resultado Esperado            |
    | user@example.com         | password   | Inicio de Sesión Exitoso      |
    | another@example.com      | 123456     | Inicio de Sesión Fallido      |
    | user_without_password    |            | Inicio de Sesión Fallido      |
    | user_with_wrong_password | wrongpass  | Inicio de Sesión Fallido      |