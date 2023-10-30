Feature: Recomendaciones en caso de emergencia 
Como persona con poco conocimiento sobre enfermedades dérmicas, 
Quiero que la aplicación o sitio web me proporcione consejos de 
primeros auxilios para mi afección dérmica mientras contacto con 
servicios médicos de emergencia, 
Para tomar medidas inmediatas en favor de aliviar la situación. 
Scenario: Identificación de la afección
Given el <usuario> ha detectado una afección dérmica y necesita ayuda de emergencia
When el <usuario> inicie sesión en la aplicación o sitio web y describa la afección
Then la aplicación o sitio web proporcionará "consejos generales" de primeros auxilios 
relacionados con la afección.
Examples:
| Inicio Sesion | Describir afeccion | consejos |
                | Me pica y se enrrojece cuando lo rasco | Humectar crema...  |
                | Me pica y siento mucho ardor  | Poner rodajas de tomate sobre... |


Scenario: Llamada a los Servicios Médicos de Emergencia
Given el <usuario> ha recibido "consejos" de primeros auxilios y necesita ayuda adicional
When el <usuario> haga una llamada a los servicios médicos de emergencia
Then la aplicación o sitio web facilitará el acceso a números de emergencia 
y proporcionará "información" sobre la ubicación actual de la persona.
Examples:
| Consejos | Llamada de emergencia | Numero de emergencia | Ubicacion usuario |
| Humectar crema... | Llamada de emergencia | 911 | AV. Jiron .... |
| Poner rodajas de tomate sobre... | Llamada de emergencia | 110 | AV. Manzana... |


Scenario: Asistencia en la aplicación de Primeros Auxilios
Given el <usuario> está aplicando los "consejos de primeros auxilios" recibidos
When el <usuario> siga las "instrucciones" proporcionadas por la aplicación o sitio web
Then la aplicación o sitio web ofrecerá "consejos específicos" según la afección.
Examples:
| instrucciones | Definir afeccion | Consejos especificos |
| instrucciones | Sarpullido, picasón | Humectantes o lociones |
| instrucciones | Piel seca | No utlizar agua caliente frecuentemente |