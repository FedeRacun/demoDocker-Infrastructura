#!/bin/bash

echo " Bienvenido a despligue de aplicaciones 1.0.clash"
echo " Por favor no se olvide de configurar el archivo Configuration antes de ejecutar el script"
echo " Presione el numero de la accion que desea ejecutar:"
echo " 1) Desplegar Docker solo  Frontend"
echo " 2) Desplegar Docker solo Backend"
echo " 3) Desplegar Ambos entornos"
echo " 4) Detener FrontEnd"
echo " 5) Detener BackEnd"
echo " 6) Detener Ambos entornos"
echo " 7) Visualizar docker iniciados"
echo " 8) Detener TODOS los docker iniciados"
echo " 9) Correr Sonar backend"
echo " 0) Salir"

while :
do
    read INPUT_STRING
    case "$INPUT_STRING" in
        1)
            echo Desplegando Frontend
	    wait 1
	    xterm -hold -e 'docker-compose -f frontend/docker-compose.yml up' &
 	    echo Seleccione otra opcion: 
            ;;

        2)
            echo Desplegando Backend
            wait 1
	    xterm -hold -e 'docker-compose -f backend/docker-compose.yml up' &
	    echo Seleccione otra opcion: 
            ;;

        3)
            echo Desplegando Ambos entornos
	    wait 1
	    xterm -hold -e 'docker-compose -f docker-compose-integrado.yml up' &
	    echo Seleccione otra opcion: 
            ;;

        4)
            echo Detener FrontEnd
	    wait 1
	    docker-compose -f frontend/docker-compose.yml stop
	    docker-compose -f frontend/docker-compose.yml rm --force
	    echo Seleccione otra opcion: 
            ;;

        5)
            echo Detener BackEnd
	    wait 1
	    docker-compose -f backend/docker-compose.yml stop
	    docker-compose -f backend/docker-compose.yml rm --force
	    echo Seleccione otra opcion: 
            ;;

        6)
            echo Detener Ambos
	    wait 1
	    docker-compose -f docker-compose-integrado.yml stop
	    docker-compose -f docker-compose-integrado.yml rm --force
	    echo Seleccione otra opcion: 
            ;;

        7)
            echo Visualizar Docker iniciados
	    wait 1
	    docker ps
	    echo Seleccione otra opcion: 
            ;;

        8)
	    echo Detener TODOS los Dockers iniciados 
	    wait 1
	    docker rm $(docker ps -a -q)
	    echo Seleccione otra opcion: 
            ;;
	
    	9)
            echo Correr Sonar backend  
            wait 1
            xterm -hold -e 'docker exec springboot-java-8 mvn clean verify sonar:sonar' &
            echo Seleccione otra opcion: 
            ;;

        0)
            exit 1 
    	    ;;

        *)
            echo " Presione el numero de la accion que desea ejecutar:"
            echo " 1) Desplegar Docker solo  Frontend"
            echo " 2) Desplegar Docker solo Backend"
            echo " 3) Desplegar Ambos entornos"
	    echo " 4) Detener FrontEnd"
            echo " 5) Detener BackEnd"
            echo " 6) Detener Ambos entornos"
            echo " 7) Visualizar docker iniciados"
            echo " 8) Detener TODOS los docker iniciados"
	    echo " 9) Correr Sonar backend"
            echo " 0) Salir"
            ;;
    esac
done
