Feature: Guardar diagnósticos previamente realizados
Como estudiante universitario de dermatología, 
Quiero tener un historial de búsquedas realizadas o 
enfermedades detectadas por la app, mostrando su diagnóstico, 
Para tener la información guardada y usarla en cualquier momento.
Scenario: Realización de búsquedas y diagnósticos con registro automático 
Given el <usuario> inició sesión y está utilizando la app para "búsquedas y 
diagnósticos" para afecciones en la piel 
When el <usuario> complete una búsqueda
Then se registrará automáticamente la "búsqueda y diagnóstico" en el historial. 
Examples:
| Realizar Busqueda | Diagnostico | Guardado en el historial |
| Enrojecimiento de la piel | Quemadura |  Diagnositco alamacenado en el historial | 
| Piel aspera y picasón | Piel seca |  Diagnositco alamacenado en el historial | 


Scenario: Acceso al historial de búsqueda y diagnóstico
Given el <usuario> desea acceder a su "historial de búsqueda" 
When el <usuario> acceda al "historial"
Then se le mostrará una lista con sus "búsquedas y diagnósticos".
Examples:
| Acceder historial | Buquedas y diagnosticos previos |
| Si | Enrrojecimiento | picason |
| Si | Piel seca | Quemadura |


Scenario: Utilización del historial para referencias 
Given el <usuario> ya se encuentra en el "historial" 
When el <usuario> seleccione una búsqueda en específico en el "historial"
Then la app mostrará toda la información así como los detalles completos de esta misma. 
Examples: 
| Busqueda en historial | Describir informacion | Buscando coincidencias |
| Busqueda en historial | Enrroje... | Coincidencias encontradas |
| Busqueda en historial | Piel se... | Información no encontrada |



