Feature: Reportar Inconvenientes a través de la Función de Reclamos
    Como usuario quiero tener acceso a una función de reclamos donde pueda reportar inconvenientes para obtener una resolución justa.

Scenario 01: Presentación de un Reclamo
    Given que estoy en la conversación con el chambeador en el chat de la plataforma,
    When surge un conflicto durante el trabajo,
    Then hago clic en el ícono de "Reclamo" dentro de la conversación,
    And se abre un formulario donde puedo describir el conflicto en detalle.

Scenario 02: Adjuntar imágenes como evidencia en el reclamo
    Given que un usuario está presentando un reclamo en la conversación de chat,
    When describan el conflicto en el formulario de reclamo,
    And decida presentar evidencias como capturas de pantalla, fotos u otros archivos.
    Then tendrá que presionar “Subir archivos” en el hilo del reclamo.

Example:
    | conflicto_during_trabajo | evidencia_adjunta |
    | si                      | si                |
    | si                      | no                |
    | no                      | si                |
