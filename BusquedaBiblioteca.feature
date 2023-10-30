Feature:  Función búsqueda en biblioteca 
Como estudiante universitario 
Quiero una función de búsqueda dentro de la biblioteca de tratamientos 
que me permita encontrar rápidamente información sobre una enfermedad dérmica específica 
Para evitar tener que desplazarse por una larga lista.
Scenario: Entrar a la biblioteca
Given el <usuario> ya se encuentra en el apartado de "biblioteca"
When el <usuario> presione en el icono del "buscador"
Then la aplicación abrirá el "sistema de búsqueda".
Examples:
| Biblioteca | Selccionar buscador | Sistema de busqueda abierto |

Scenario:  Utilizar el buscador
Given el <usuario> ya se encuentra usando el "buscador"
When el <usuario> escriba la enfermedad dérmica que desea buscar
Then el sistema le arrojará los resultados sobre lo buscado.
Examples:
| Buscador | Descripcion | Resultados |
           | Mis sintomas son dolor de cabeza... | Podria tratarse de fiebre... |
           | Tengo demasiada tos y estotnudos... | Podria tratarse de un resfriado... |
