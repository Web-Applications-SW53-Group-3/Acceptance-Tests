Feature: Registrar con correo
    Como usuario quiero poder registrarme con mi correo en la plataforma para agilizar el proceso de registro.

Scenario 01: Registro exitoso
    Given que el cliente quiere registrarse en la plataforma
    When el cliente ingrese un correo electrónico válido y una contraseña segura
    Then el sistema procesará el registro
    And creará una cuenta asociada con ese correo electrónico.

Scenario 02: Registro fallido
    Given que el cliente quiere registrarse en la plataforma
    When el cliente ingrese un correo electrónico que ya está en uso
    Then el sistema no permitirá que el usuario complete el registro
    And mostrará un mensaje de error indicando que ese correo ya ha sido registrado.

Example:
    | correo               | contraseña     |
    | nuevo@ejemplo.com    | password123    |
    | usuario3@email.com   | securepass456  |
