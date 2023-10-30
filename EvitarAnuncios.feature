Feature: Evitar los anuncios
Como usuario registrado, 
Quiero acceder a una versión de paga,
Para evitar visualizar anuncios y utilizar 
la app/website de forma libre sin requerir de los créditos.
Scenario: Opción de Actualización para Usuario de Pago
Given el <usuario> ya está registrado en la aplicación y desea evitar anuncios
When el <usuario> inicie sesión y acceda a la "configuración del perfil"
Then se presentará una opción clara y accesible para actualizar a una "versión 
de pago" que elimine los anuncios.
Examples:
| Configuracion de perfil | Usuario de pago | Actualizar a usuario de pago |
| Configuracion de perfil | Si | Aceptar | 
| Configuracion de perfil | No | Cancelar |


Scenario: Selección de la Versión de Pago
Given el <usuario> ha decidido actualizar a una "versión de pago"
When el <usuario> complete el proceso de pago correspondiente
Then se registrará la suscripción de pago en la cuenta del <usuario> de manera exitosa.
Examples:
| Version de pago | Nombre | DNI | Tarjeta | Analisis de datos | Suscripción |
| Aceptar | Jerson | 45621214 | 3225652 | Datos correctos | Suscripción exitosa |
| Aceptar | Axel | 52478541 | 7841145 | Datos incorrectos | Error en suscripción |


Scenario:  Navegación sin Anuncios
Given el <usuario> ha adquirido la "versión de pago"
When el <usuario> acceda nuevamente a la aplicación o sitio web
Then el <usuario> podrá utilizar la aplicación o sitio web de manera
completamente libre de anuncios, garantizando una experiencia sin 
interrupciones publicitarias.
Examples:
| Estado de suscripción | Actulizar | Anuncios removidos |
| Aceptado | Si | Navegacion libre de anuncios |
| Rechazado | 

