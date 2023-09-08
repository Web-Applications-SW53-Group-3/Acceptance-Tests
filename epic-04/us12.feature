Feature: Comunicar entre empleado y chambeador
    Como empleador quiero tener la opción de definir las características del trabajo directamente con los chambeadores para mantener un medio de comunicación seguro.

Scenario 01: Definiendo las características del trabajo
    Given que el empleador se contactó con el chambeador
    When se inicie el chat de la app
    Then podrán acordar las pautas y características del trabajo.

Example:
    | empleado_contactado| chambeador_contactado |
    | si                 | si                    |
    | si                 | no                    |
    | no                 | si                    |