Feature: Iniciar sesión
    Como usuario, quiero iniciar sesión con mi correo y contraseña para un acceso seguro.

Scenario 01: Inicio de sesión exitoso
    Given que el usuario ya se encuentra registrado en la plataforma
    When ingrese su respectivo correo y contraseña
    Then el sistema permitirá al usuario iniciar sesión correctamente en la plataforma.

Scenario 02: Inicio de sesión fallido
    Given que el usuario ya se encuentra registrado en la plataforma
    When ingrese un correo o contraseña incorrecta
    Then el sistema no permitirá al usuario iniciar sesión
    And se mostrará un mensaje de error indicando que las credenciales son incorrectas.

Example:
    | correo             | contraseña   |
    | usuario@ejemplo.com| contrasena1  |
    | otro@correo.com    | pass123      |
    | usuario2@email.com | p455w0rd     |