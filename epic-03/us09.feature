Feature: Publicar anuncios como chambeador
    Como chambeador quiero publicar un anuncio de trabajo para que me contacten más rápido.

Scenario 01: Publicación de anuncio de trabajo correcta
    Given que el usuario chambeador se encuentre en la sección de "Publicar"
    And tenga una suscripción premium activa
    When llene los datos solicitados
    Then se publicará un anuncio de trabajo para que los empleadores puedan contactarse.

Scenario 02: Datos incompletos en la publicación
    Given que el usuario chambeador se encuentre en la sección de "Publicar"
    And tenga una suscripción premium activa
    When los datos estén incompletos
    Then se mostrará un mensaje de error indicando que faltan llenar datos en la publicación.

Example:
    | chambeador_en_seccion | suscripcion_premium | datos_completos |
    | si                   | si                  | si              |
    | si                   | si                  | no              |
    | si                   | no                  | si              |