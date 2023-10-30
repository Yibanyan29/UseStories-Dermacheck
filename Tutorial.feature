Feature: Guia para principiantes 
Como nuevo estudiante registrado, 
Quiero una sección de "Guía para principiantes" 
que me proporcione información detallada sobre cómo 
utilizar las herramientas de diagnóstico, 
Para acceder a recursos educativos y conectarme con la
comunidad de usuarios.
Scenario:  Acceso a la sección de "Guía para Principiantes"
Given el <usuario> registrado desea aprender a utilizar 
la aplicación/website de manera efectiva. 
When el <usuario> inicie sesión en la aplicación/website. 
Then la aplicación/website mostrará una sección clara 
llamada "Guía para principiantes" en la página principal.
Examples: 
| Guia para principiantes | Iniciar | Cancelar |
| Guia para principiantes | Iniciar | Proceso de escaneo | Busqueda en historial |
| Guia para principiantes | Cancelar |


Scenario: Exploración de la guía para principiantes
Given el <usuario> ha accedido a la sección de "Guía para principiantes". 
When el <usuario> haga clic en esta sección. 
Then la aplicación/website proporcionará una serie de "temas" y "secciones informativas", 
como "Cómo Utilizar las Herramientas de Diagnóstico", "Acceso a Recursos Educativos" y 
"Conectarse con la Comunidad."
Exameples:
| Guia para principiantes | Temas | Secciones informativas | Aceptar |
| Guia para principiantes | Temas | Utilizar herramientas | Aceptar |
| Guia para principiantes | Secciones informativas | Acceso a recursos educativos |


Scenario: Acceso a información detallada
Given el <usuario> desea aprender sobre cómo utilizar las 
"herramientas de diagnóstico". 
When el <usuario> seleccione la sección 
"Cómo Utilizar las Herramientas de Diagnóstico." 
Then la aplicación/website mostrará información detallada 
sobre cómo utilizar las "herramientas de diagnóstico" de manera efectiva.
Examples: 
| Cómo Utilizar las Herramientas de Diagnóstico | Aprender | 
| Cómo Utilizar las Herramientas de Diagnóstico | Aprender | Aceptar | 




