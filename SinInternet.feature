Feature: Acceder a movilidad “Sin internet”
Como usuario en una zona sin cobertura, 
Quiero acceder a la aplicación/sitio web bajo la modalidad "sin internet" 
Para acceder a limitadas opciones de la aplicación.
Scenario: Activación del modo "Sin Internet"
Given el <usuario> está en una zona sin cobertura de internet
When el <usuario> inicie la "aplicación" o el "sitio web"
Then el <usuario> con la "versión Premium" podrá activar el modo "Sin Internet"
And el sistema ofrecerá acceso al contenido sin restricciones.
Examples:
| Pantalla principal | Usuario Premiun | Modo sin internet | Activado | No disponible |
| Pantalla principal | Si es Ususario Premiun | Modo sin internet | Activado |
| Pantalla principal | No es Usuario Premiun | Modo sin internet | No disponible |


Scenario: Acceso a funciones limitadas
Given el <usuario> está sin conexión a internet
When el <usuario> acceda a la aplicación
Then el sistema proporcionará acceso a "funciones 
limitadas" que previamente tendrá que haber descargado.
Examples: 
| Ingreso a la aplicacion | Acceso a conexion | Funciones limitadas |
| Ingreso a la aplicacion | Sin acceso a conexion | Funciones limitadas | Busqueda limitada |
| Ingreso a la aplicacion | Con acceso a conexion | 
