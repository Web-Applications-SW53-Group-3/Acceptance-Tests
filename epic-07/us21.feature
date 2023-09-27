Feature: Postular a Vacantes de Trabajo

  Scenario: Postulación a una Vacante de Trabajo
    Given que he identificado una vacante laboral compatible con mis habilidades en ChambeaPe
    When elija la opción para postularme a la vacante
    And haga clic en "Confirmar"
    Then se mostrará un mensaje “Solicitud Enviada” y seré considerado en el proceso de selección.

  Scenario: Cancelación de una postulación
    Given que he postulado a una vacante laboral en ChambeaPe
    When decida cancelar mi postulación
    And elija la opción para retirar mi postulación
    Then se mostrará un mensaje confirmando que mi postulación ha sido retirada.

  Scenario: Seguimiento de estado de postulaciones
    Given que he realizado varias postulaciones a vacantes de trabajo en ChambeaPe
    When desee verificar el estado de mis postulaciones
    And seleccione la opción para ver el estado de mis postulaciones
    Then podré ver una lista de las vacantes a las que he postulado y su estado actual.

    Examples:
    | Chambeador       | Vacante de Trabajo       | Resultado Esperado   |
    | JuanChambeador   | Trabajo de Electricista  | Postulación Exitosa  |
    | MariaChambeadora | Trabajo de Plomero       | Postulación Exitosa  |
