# Utilizar Despligue de Entornos 

### Configurar el archivo  "Configuration" con las variables necesarias y sus respectivos volumenes.
Se debe tener clonado el repositorio/s con el que se va a trabajar

```
#Volumenes:

 #Ejemplo FRONT=/home/usuario/carpetaDeTrabajo/FrontEnd/
FRONT=/path-del-codigo-frontend    

 #Ejemplo BACK=/home/usuario/carpetaDeTrabajo/BackEnd/
BACK=/path-del-codigo-backend

#Base De Datos
POSTGRES_PASSWORD=base01
POSTGRES_USER=base01
POSTGRES_DB=base01
```

### Para Iniciar nuestras instancias en OS Ubuntu
 `sh IniciarEntorno.sh`


### El stack cuenta con ejemplo en cada uno de los entornos
El ejemplo se inicia en localhost:4201.
Para ejecutar dichos ejemplos no debe olvidarse de utilizar los path correspondientes:

"ruta en donde se clono el proyecto infraestructura"/frontend/frontend-vol





# Usar compose

### Construir imagenes
 `docker-compose build`.
### Iniciar instancias
 `docker-compose up`.
### Detener instancias
 `docker-compose stop`.
### remover las instancias
`docker-compose rm --force`
