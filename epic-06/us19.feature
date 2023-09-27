Feature: Reportar Inconvenientes a través de la Función de Reclamos

  Scenario: Presentación de un Reclamo
    Given que estoy en la conversación con el chambeador en el chat de la plataforma
    When surge un conflicto durante el trabajo
    Then hago clic en el ícono de "Reclamo" dentro de la conversación
    And se abre un formulario donde puedo describir el conflicto en detalle

  Scenario: Adjuntar imágenes como evidencia en el reclamo
    Given que un usuario está presentando un reclamo en la conversación de chat
    When describen el conflicto en el formulario de reclamo
    And decide presentar evidencias para evidencia como capturas de pantalla, fotos u otros archivos.
    Then tendrá que presionar “Subir archivos” en el hilo del reclamo

    Examples:
    | Usuario         | Tipo de Problema           | Descripción del Problema                 | Resultado Esperado         |
    | Usuario1        | Problema Técnico           | La aplicación se cierra inesperadamente  | Reclamo Enviado con Éxito  |
    | Usuario2        | Comportamiento Inapropiado | Otro usuario me envió mensajes ofensivos | Reclamo Enviado con Éxito  |
