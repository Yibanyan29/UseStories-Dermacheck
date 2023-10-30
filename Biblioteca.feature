Feature: Biblioteca de tratamiento
Como estudiante universitario 
Quiero que la biblioteca esté dividida 
por mortalidad de enfermedades (leve a riesgosa) 
Para una búsqueda más rápida
Scenario: Usuario entra a la página principal de la app.
Given el <usuario> quiere buscar una afección que desconoce
When el <usuario> entra a la "aplicación", 
And el <usuario> se encuentra en la "ventana principal" 
Then el <usuario> selecciona el icono de "biblioteca" 
And el <usuario> entra a la "Biblioteca de información".
Examples:
| Ventana Principal | Biblioteca | Biblioteca información |


Scenario: Entrar a la biblioteca
Given el <usuario> está dentro del apartado "Biblioteca de información"
When el <usuario> hace uso del "filtro" para escoger entre las 
opciones "Enfermedades",  "Tratamientos" o "Revistas Médicas"
Then el sistema realizará el primer filtrado.
Examples:
| Bliblioteca de informacion | filtro | Mostrando resultado filtrado |
| Bliblioteca de informacion | Enfermedades | Mostrando resultados filtrado |
| Bliblioteca de informacion | Tratamientos | Mostrando resultados filtrado |
| Bliblioteca de informacion | Revistas Médicas | Mostrando resultados filtrado |


Scenario: Realizar mi búsqueda.
Given el sistema ya realizó el "primer filtro".
When el <usuario> ingrese la "afección", "tratamiento" o "revista" 
que desee buscar
Then visualizará información relevante relacionada a su búsqueda.
Examples:
| Filtro seleccionado | Seleccion | Informacion segun lo buscado |
| Enfermedades | afección | Informacion |
| Tratamientos | tratamiento | Informacion |
| Revistas Médicas | revista | Informacion |
