Feature: Inicio de sesion
Como estudiante universitario 
Quiero poder entrar a la aplicación mediante el inicio de sesió
Para poder tener mayor seguridad y privacidad en mi cuenta
Scenario: Acceder a la página de inicio de sesión
Given el <usuario> desea acceder a su 
      cuenta de manera segura
When el <usuario> abra la aplicación o sitio web
Then el sistema proporcionará una opción para 
     <inicio de sesión>
And  el sistema mostrará un <formulario> con los 
     siguientes datos: <Email> o <nombre de usuario> y <contraseña>.
Examples:
|Registrarse |correo                |contraseña       |
             |usuario1@example.com  |Contraseña123    |
             |usuario2@example.com  |Contraseña123465 | 


Scenario: Inicio de sesión con credenciales
Given el <usuario> seleccionó la opción para <inicio de sesión>
When el <usuario> ingrese sus <credenciales>
Then el sistema verificará los <datos otorgados>
Examples: 
|Registrarse | Nombre  | Apellido |Numero      |Registro exitoso |
             |  Juan   | Romero   | 931256412  |Registro exitoso |
             |  María  | Damian   | 932232232  |Registro exitoso |


Scenario: Acceso exitoso a la cuenta
Given el <usuario> ingresó los <datos> correctamente
When el sistema verifique los <datos> ingresados
Then el sistema mostrará la <pantalla principal> del aplicativo.
Exmples: 
|Registro exitoso | Pantalla principal |
                  | Bienenvido         |