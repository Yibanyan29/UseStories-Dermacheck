Feature: Subir fotografías previamente tomadas
Como universitario con indicios de enfermedades dérmicas desconocidas, 
Quiero tener una opción de subir fotos de mi galería 
Para poder recibir un diagnóstico sin necesidad de tomar una foto al instante.
Scenario: Acceder a la opción de subir foto
Given el <usuario> presenta indicios de una enfermedad dérmica 
When el <usuario> entre a la "sección cámara"
Then el <usuario> podrá elegir entre "tomar" o "subir" una foto
Examples:
| Indicios de enfermedad | Acceder Camara | Tomar foto | Seleccionar foto | Acceso rechazado |
                         | Aceptar | Tomar foto | Foto tomada |
                         | Aceptar | Seleccionar foto | Foto seleccionada |
                         | Rechazar| Sin acceso a la camara | 


Scenario: Selección de foto desde galería
Given el <usuario> eligió subir una foto previamente tomada
When el <usuario> seleccione la opción "Subir imagen" 
And el <usuario> seleccione una imagen a ser escaneada
Then el sistema comenzará a analizar la foto
And el sistema mostrará el "diagnóstico certificado" realizado sobre la imagen subida.
Examples:
| Subir imagen | Escaneando imagen | Diagnositico imagen |
| Subir imagen | Escaneando imagen | Detecta piel seca |
| Subir imagen | Escaneando imagen | Detecta quemadura de primer grado |