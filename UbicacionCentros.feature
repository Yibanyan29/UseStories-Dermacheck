Feature: Ubicación de centros médicos principales
Como estudiante universitario, 
Quiero una sección que me indique las ubicaciones de 
clínicas u hospitales principales 
Para poder acudir a un especialista si es que la enfermedad 
que padezco es riesgosa.
Scenario: Acceso a la sección de ubicaciones de clínicas y hospitales
Given el <usuario> universitario desea encontrar ubicaciones de 
u hospitales en caso de emergencia
When el <usuario> inicie sesión en el apartado de "salud"
Then la aplicación proporcionará una sección "llamada 
Servicios de Emergencia" con la que el usuario puede interactuar.
Examples:
| Inicio sesión | salud | Llamada emergencia | seleccionar Numero |
                        | Centro medico      | 32554              | 


Scenario: Visualización de información detallada
Given el <usuario> ha encontrado una clínica u hospital de interés
When el <usuario> seleccione una "clínica" u "hospital" de la lista
Then la aplicación mostrará "información detallada" de este. 
Exameples:
| Buscar Clinica | Mostrar lista | Detalles |
| Clinica 2 de Mayo | Centros similares | A 5KM de distancia | Atencion 24h | 
| Clinica Ricardo Palma | Centros similares | A 10KM de distancia | Atencion de 7 a 10 |


Scenario: Obtención de direcciones y contacto
Given el <usuario> ha seleccionado una clínica u hospital y desea 
obtener direcciones precisas o ponerse en contacto
When el <usuario> seleccione la opción para "obtener direcciones" o 
"llamar" directamente a la clínica u hospital
Then la aplicación proporcionará "indicaciones" de navegación o 
iniciará una "llamada" para que el <usuario> pueda llegar a la ubicación 
o contactar al especialista rápidamente si la enfermedad es riesgosa.
Examples:
| Centro seleccionado | Obetener direcciones | Llamar | Indicaciones | Llamada |
| Clinica 2 de Mayo| Obetenr indicaciones | Indicaciones | Centro a 5KM de distancia | Siga recto |
|Clinica Ricardo Palma | Llamar | Llamada | Conectandose con un asesor de servicios |
 
