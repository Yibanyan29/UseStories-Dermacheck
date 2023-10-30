Feature:  Impresión de diagnóstico
Como persona con poco conocimiento sobre enfermedades dermatológicas
Quiero tener la opción de guardar o imprimir el resultado del diagnóstico preliminar 
Para usarlo de referencia o enseñarlo a un profesional de la salud.
Scenario: Habilitar la opción para descargar el resultado del diagnóstico
Given el <usuario> ya tiene el resultado de su análisis realizado previamente
When el resultado sea visualizado por completo
Then el sistema mostrará una opción para "descargar" el resultado del diagnóstico.
Examples:
| Analisis | Resultado | Descargar | Aceptar | Cancelar |
| Analisis | Visualizando analisis | Descargar | Aceptar |
| Analisis | Visualizando analisis | Descargar | Cancelar |

Scenario: Imprimir el diagnóstico
Given el <suario> obtenga el resultado de su análisis realizado previamente
When el "resultado" sea visualizado por completo
Then el <usuario> podrá imprimir el diagnóstico.  
| Visualizando resultado | Imprimir | Aceptar | Cancelar | 
| Visualizando resultado | Imprimir | Aceptar |
| Visualizando resultado | Imprimir | Cancelar |
