Feature: Comunicar entre Empleado y Chambeador

  Scenario: Inicio de chat sin contacto previo
    Given que el empleador desea contactar a un chambeador por primera vez
    When selecciona la opción para iniciar un chat en la aplicación
    Then se debería iniciar un nuevo chat con el chambeador seleccionado.

  Scenario: Registro de la conversación del chat
    Given que el empleador y el chambeador están comunicándose a través del chat de la aplicación
    When acuerdan las pautas y características del trabajo
    Then la aplicación debería registrar la conversación del chat para referencia futura.
    And se debería iniciar un nuevo chat con el chambeador seleccionado.

  Scenario: Notificaciones de nuevos mensajes en el chat
    Given que el empleador ha iniciado un chat con un chambeador
    When el chambeador envía un nuevo mensaje en el chat
    Then el empleador debería recibir una notificación sobre el nuevo mensaje.

    Examples:
    | Empleado      | Chambeador   | Mensaje Enviado  | Resultado Esperado             |
    | EmpresaXYZ    | JuanChambeador | ¡Hola! ¿Estás disponible para un proyecto? | Mensaje Enviado con Éxito |
    | OtraEmpresa   | MariaChambeadora | Hola, tengo una oferta de trabajo para ti. | Mensaje Enviado con Éxito |
