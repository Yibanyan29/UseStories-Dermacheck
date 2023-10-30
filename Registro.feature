Feature: Registro de cuenta
Como estudiante universitario 
Quiero poder registrarme en la aplicación mediante la 
creación rápida de una cuenta personal 
Para poder ingresar de manera segura a la aplicación. 
Scenario: Acceso a la página de registro
Given el <usuario> desea <registrarse> en la aplicación
When el <usuario> abra la "aplicación" o "sitio web"
Then el sistema mostrará un botón de "Registrarse" o "Crear cuenta"
And el sistema mostrará un <formulario de registro> 
    con los siguientes datos: "Nombres", "Apellidos", "Nombre de Usuario" y "Contraseña"
Examples:
| Registro-Crear Cuenta | Nombre | Apellidos | NombreUsuario | Contraseña |
                        | Luis   | Ramirez   | Usuario12     | 23221455   |  
                        | Marcos | Flores    | Usuario4565   | 32222145   |  


Scenario: Completar el formulario de registro
Given el <usuario> ha accedido a la "página de registro" 
When el <usuario> complete el "formulario" con los 
     "datos" necesarios
Then el sistema verificará los "datos" otorgados y continuará 
     con el "proceso de registro".
Examples:
| Verificando Datos | Registrado exitosamente | Error en el registro |
| Luis - Ramirez - Usuario12 - 23221455       | Registrado exitosamente |
| Marcos - Flores - Usuario4565 - 32222145    | Error en el registro |


Scenario:  Confirmación y acceso a la cuenta
Given el <usuario> completo de forma satisfactoria el "registro"
When el <usuario> presione el botón de "Aceptar"
Then el sistema creará el <User> del <usuario>.
Example: 
| Resgistrado exitosamente | Aceptar | Cuenta Creada |
| Usuario registrado       | Aceptar | Puedes usar tu cuenta |


Scenario: Acceder con cuenta de Google
Given el <usuario> tenga una <cuenta de Google> 
      o <correo electrónico> vinculada al <dispositivo>
When el <usuario> seleccione la opción "Continuar con email"
Then el sistema creará el <User> del <usuario>.
Example:
| Crear cuenta | Continuar con Gmail | Acceder | Cuenta creada con exito |
| Crear cuenta | Continuar con Gmail | usuario1@example.com | Cuenta creada |